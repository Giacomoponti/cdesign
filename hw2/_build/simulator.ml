(* X86lite Simulator *)

(* See the documentation in the X86lite specification, available on the 
   course web pages, for a detailed explanation of the instruction
   semantics.
*)

open X86

(* simulator machine state -------------------------------------------------- *)

let mem_bot = 0x400000L          (* lowest valid address *)
let mem_top = 0x410000L          (* one past the last byte in memory *)
let mem_size = Int64.to_int (Int64.sub mem_top mem_bot)
let nregs = 17                   (* including Rip *)
let ins_size = 8L                (* assume we have a 8-byte encoding *)
let exit_addr = 0xfdeadL         (* halt when m.regs(%rip) = exit_addr *)

(* Your simulator should raise this exception if it tries to read from or
   store to an address not within the valid address space. *)
exception X86lite_segfault

(* The simulator memory maps addresses to symbolic bytes.  Symbolic
   bytes are either actual data indicated by the Byte constructor or
   'symbolic instructions' that take up eight bytes for the purposes of
   layout.

   The symbolic bytes abstract away from the details of how
   instructions are represented in memory.  Each instruction takes
   exactly eight consecutive bytes, where the first byte InsB0 stores
   the actual instruction, and the next seven bytes are InsFrag
   elements, which aren't valid data.

   For example, the two-instruction sequence:
        at&t syntax             ocaml syntax
      movq %rdi, (%rsp)       Movq,  [~%Rdi; Ind2 Rsp]
      decq %rdi               Decq,  [~%Rdi]

   is represented by the following elements of the mem array (starting
   at address 0x400000):

       0x400000 :  InsB0 (Movq,  [~%Rdi; Ind2 Rsp])
       0x400001 :  InsFrag
       0x400002 :  InsFrag
       0x400003 :  InsFrag
       0x400004 :  InsFrag
       0x400005 :  InsFrag
       0x400006 :  InsFrag
       0x400007 :  InsFrag
       0x400008 :  InsB0 (Decq,  [~%Rdi])
       0x40000A :  InsFrag
       0x40000B :  InsFrag
       0x40000C :  InsFrag
       0x40000D :  InsFrag
       0x40000E :  InsFrag
       0x40000F :  InsFrag
       0x400010 :  InsFrag
*)
type sbyte = InsB0 of ins       (* 1st byte of an instruction *)
           | InsFrag            (* 2nd - 8th bytes of an instruction *)
           | Byte of char       (* non-instruction byte *)

(* memory maps addresses to symbolic bytes *)
type mem = sbyte array

(* Flags for condition codes *)
type flags = { mutable fo : bool
             ; mutable fs : bool
             ; mutable fz : bool
             }

(* Register files *)
type regs = int64 array

(* Complete machine state *)
type mach = { flags : flags
            ; regs : regs
            ; mem : mem
            }

(* simulator helper functions ----------------------------------------------- *)

(* The index of a register in the regs array *)
let rind : reg -> int = function
  | Rip -> 16
  | Rax -> 0  | Rbx -> 1  | Rcx -> 2  | Rdx -> 3
  | Rsi -> 4  | Rdi -> 5  | Rbp -> 6  | Rsp -> 7
  | R08 -> 8  | R09 -> 9  | R10 -> 10 | R11 -> 11
  | R12 -> 12 | R13 -> 13 | R14 -> 14 | R15 -> 15

(* Helper functions for reading/writing sbytes *)

(* Convert an int64 to its sbyte representation *)
let sbytes_of_int64 (i:int64) : sbyte list =
  let open Char in 
  let open Int64 in
  List.map (fun n -> Byte (shift_right i n |> logand 0xffL |> to_int |> chr))
           [0; 8; 16; 24; 32; 40; 48; 56]

(* Convert an sbyte representation to an int64 *)
let int64_of_sbytes (bs:sbyte list) : int64 =
  let open Char in
  let open Int64 in
  let f b i = match b with
    | Byte c -> logor (shift_left i 8) (c |> code |> of_int)
    | _ -> 0L
  in
  List.fold_right f bs 0L

(* Convert a string to its sbyte representation *)
let sbytes_of_string (s:string) : sbyte list =
  let rec loop acc = function
    | i when i < 0 -> acc
    | i -> loop (Byte s.[i]::acc) (pred i)
  in
  loop [Byte '\x00'] @@ String.length s - 1

(* Serialize an instruction to sbytes *)
let sbytes_of_ins (op, args:ins) : sbyte list =
  let check = function
    | Imm (Lbl _) | Ind1 (Lbl _) | Ind3 (Lbl _, _) -> 
      invalid_arg "sbytes_of_ins: tried to serialize a label!"
    | o -> ()
  in
  List.iter check args;
  [InsB0 (op, args); InsFrag; InsFrag; InsFrag;
   InsFrag; InsFrag; InsFrag; InsFrag]

(* Serialize a data element to sbytes *)
let sbytes_of_data : data -> sbyte list = function
  | Quad (Lit i) -> sbytes_of_int64 i
  | Asciz s -> sbytes_of_string s
  | Quad (Lbl _) -> invalid_arg "sbytes_of_data: tried to serialize a label!"


(* It might be useful to toggle printing of intermediate states of your 
   simulator. Our implementation uses this mutable flag to turn on/off
   printing.  For instance, you might write something like:

     [if !debug_simulator then print_endline @@ string_of_ins u; ...]

*)
let debug_simulator = ref false

(* Interpret a condition code with respect to the given flags. *)
let interp_cnd {fo; fs; fz} : cnd -> bool =  function 
  | Eq -> (if fz == true then (true) else (false))
  | Neq -> if fz == false then (true) else (false)       
  | Lt -> if fs != fo then (true) else (false)
  | Le -> if (fs != fo || fz == true) then (true) else (false)
  | Gt -> if (fs == fo && fz != true) then (true) else (false)
  | Ge -> if (fs == fo) then (true) else (false) 

(* Maps an X86lite address into Some OCaml array index,
   or None if the address is not within the legal address space. *)
let map_addr (addr:quad) : int option =
  let int_addr = Int64.to_int(Int64.sub addr mem_bot) in
    if (int_addr < 0 || int_addr >= mem_size) then None
  else Some int_addr 

(* Simulates one step of the machine:
    - fetch the instruction at %rip
    - compute the source and/or destination information from the operands
    - simulate the instruction semantics
    - update the registers and/or memory appropriately
    - set the condition flags
*)

let immer (x:imm) : quad =
  begin match x with 
    |Lit quad -> quad
    |_ -> invalid_arg "lbl"
  end

let decosrc (o:operand) (m:mach) : int64 =
  begin match o with
    |Imm x -> immer x
    |Reg x -> m.regs.(rind x)
    |Ind1 x -> int64_of_sbytes ((m.mem.(Option.get (map_addr(immer x))))::[])
    |Ind2 x -> int64_of_sbytes ((m.mem.(Option.get (map_addr((m.regs.(rind x))))))::[])
    |Ind3 (x, y) -> int64_of_sbytes ((m.mem.(Int64.to_int (immer x) + (Option.get (map_addr((m.regs.(rind y)))))))::[])
  end

let decodst (o:operand) (m:mach) : sbyte =
  begin match o with
   |Imm y -> invalid_arg "Destination cannot be Immediate"
   |Reg y -> List.hd@@sbytes_of_int64 (m.regs.(rind y))
   |Ind1 y -> m.mem.(Option.get (map_addr(immer y)))
   |Ind2 y -> m.mem.(Option.get (map_addr(m.regs.(rind y))))
   |Ind3 (y, z) -> m.mem.(Int64.to_int (immer y) + (Option.get (map_addr((m.regs.(rind z))))))
  end
  (*begin match o with
   |Imm y -> invalid_arg "no immediate destination"
   |Reg y -> List.hd (sbytes_of_int64 m.regs.(rind y))
   |Ind1 y -> m.mem.(Option.get (map_addr(immer y)))
   |Ind2 y -> m.mem.(Option.get (map_addr(m.regs.(rind y))))
   |Ind3 (y, z) -> m.mem.(Int64.to_int (immer y) + (Option.get (map_addr((m.regs.(rind z))))))
  end*)

let sign (n:quad) : (int) =  
    Int64.compare n 0L

let addq (src:operand) (dest:operand) (m:mach) : unit = 
  match src, dest with 
  | Reg x, Reg y -> let src_value = (m.regs.(rind x)) in 
                      let dst_value = (m.regs.(rind y)) in 
                        let res = (Int64.add src_value dst_value) in
                          (*let print = Printf.printf "%s\n" (Int.to_string (sign res)) in *) 
                        	let assign = m.regs.(rind y) <- (res) in 
                            begin 
                              if (((sign src_value) = (sign dst_value)) && ((sign src_value) <> (sign res))) then m.flags.fo <- true
                              else m.flags.fo <- false;  
                              if (sign res = 0) then m.flags.fz <- true
                              else m.flags.fz <- false;
                              if (sign res = -1) then m.flags.fs <- true
                              else m.flags.fs <- false; 
                            end
  | _, _ -> invalid_arg "args not in registers"
  (*begin match l with 
    | [x; Reg y] -> m.regs.(rind y) <- (Int64.add (decosrc x m) (m.regs.(rind y)))
    | [x; Ind1 y] -> m.mem.(Option.get (map_addr(immer y))) <- List.hd@@sbytes_of_int64 (Int64.add (decosrc x m) (int64_of_sbytes (m.mem.(Option.get (map_addr(immer y)))::[])))
    | [x; Ind2 y] -> m.mem.(Option.get (map_addr(m.regs.(rind y)))) <- List.hd@@sbytes_of_int64 (Int64.add (decosrc x m) (int64_of_sbytes (m.mem.(Option.get (map_addr(m.regs.(rind y))))::[])))
    | [x; Ind3 (y, z)] -> m.mem.(Int64.to_int (immer y) + (Option.get (map_addr((m.regs.(rind z)))))) <- List.hd@@sbytes_of_int64 (Int64.add (decosrc x m) (int64_of_sbytes (m.mem.(Int64.to_int (immer y) + (Option.get (map_addr((m.regs.(rind z))))))::[])))
  end*)


let movq (l:operand list) (m:mach) : unit =
  begin match l with
    |[x; Imm y] -> invalid_arg "Immediate cannot be a location"
    |[x; Reg y] -> (m.regs.(rind y) <- decosrc x m)
    |[x; Ind1 y] -> (m.mem.(Option.get (map_addr(immer y))) <- List.hd@@sbytes_of_int64 (decosrc x m))
    |[x; Ind2 y] -> (m.mem.(Option.get (map_addr((m.regs.(rind y))))) <- List.hd@@sbytes_of_int64 (decosrc x m))
    |[x; Ind3 (y, z)] -> (m.mem.(Option.get@@map_addr (Int64.add (immer y) (m.regs.(rind z)))) <- List.hd@@sbytes_of_int64(decosrc x m))
  end
let notq (l:operand) (m:mach) : unit  = 
match l with 
  | Reg x -> let n = m.regs.(rind x) in 
              m.regs.(rind x) <- Int64.lognot (n)
  | _ -> invalid_arg "not in reg"
let negq (l:operand) (m:mach) : unit = 
    let check =  if (Int64.equal (decosrc l m) (Int64.min_int)) then m.flags.fo <- true 
                  else m.flags.fo <- false in
    let mov = movq [l; Reg Rdi] m in 
    let not = notq (Reg Rdi) m in
    let value = Int64.add (decosrc (Reg Rdi) m) (1L) in
      let mat = 
        match l with 
        | Imm y -> invalid_arg "Dest cannot be imm"
        | Reg y -> (m.regs.(rind y) <- Int64.add (1L) (Int64.lognot m.regs.(rind y)))
        | Ind1 y -> (m.mem.(Option.get (map_addr(immer y))) <- List.hd@@sbytes_of_int64 (value))
        | Ind2 y -> (m.mem.(Option.get (map_addr((m.regs.(rind y))))) <- List.hd@@sbytes_of_int64 (value))
        | Ind3 (y, z) -> (m.mem.(Option.get@@map_addr (Int64.add (immer y) (m.regs.(rind z)))) <- List.hd@@sbytes_of_int64 (value))
      in
      begin 
        if ((sign value) = 0) then m.flags.fz <- true else m.flags.fz <- false;
        if ((sign value) = -1) then m.flags.fs <- true else m.flags.fs <- false;
        (*Printf.printf "%s \n" (Int64.to_string value);        
        Printf.printf "%s \n" (Int.to_string@@sign value);
        Printf.printf "%s" (Bool.to_string m.flags.fo);
        Printf.printf "%s" (Bool.to_string m.flags.fs);
        Printf.printf "%s\n" (Bool.to_string m.flags.fz);*)
      end

let incq (l:operand) (m:mach) : unit =
  begin match l with 
    | Imm y -> invalid_arg "Dest cannot be imm"
    | Reg y -> (m.regs.(rind y) <- Int64.add (m.regs.(rind y)) 1L)
    | Ind1 y -> (m.mem.(Option.get (map_addr(immer y))) <- List.hd@@sbytes_of_int64 (Int64.add (decosrc (Ind1 y) m) 1L))
    | Ind2 y -> (m.mem.(Option.get (map_addr((m.regs.(rind y))))) <- List.hd@@sbytes_of_int64 (Int64.add (decosrc (Ind2 y) m) 1L))
    | Ind3 (y, z) -> (m.mem.(Int64.to_int (immer y) + (Option.get (map_addr((m.regs.(rind z)))))) <- List.hd@@sbytes_of_int64 (Int64.add (decosrc (Ind3 (y, z)) m) 1L))
  end

let decq (l:operand) (m:mach) : unit =
  begin match l with 
    | Imm y -> invalid_arg "Dest cannot be imm"
    | Reg y -> (m.regs.(rind y) <- Int64.sub (m.regs.(rind y)) 1L)
    | Ind1 y -> (m.mem.(Option.get (map_addr(immer y))) <- List.hd@@sbytes_of_int64 (Int64.sub (decosrc (Ind1 y) m) 1L))
    | Ind2 y -> (m.mem.(Option.get (map_addr((m.regs.(rind y))))) <- List.hd@@sbytes_of_int64 (Int64.sub (decosrc (Ind2 y) m) 1L))
    | Ind3 (y, z) -> (m.mem.(Int64.to_int (immer y) + (Option.get (map_addr((m.regs.(rind z)))))) <- List.hd@@sbytes_of_int64 (Int64.sub (decosrc (Ind3 (y, z)) m) 1L))
  end

  let rec copier (b: sbyte list) (addr: int)(m:mach) : unit =
    match b with
      |x::[]-> m.mem.(addr) <- x  
      |h::tl-> m.mem.(addr) <- h; copier tl (addr+1) m

  let subq (l:operand list) (m:mach) : unit =
    match l with
      |[x; Reg y] -> m.regs.(rind y) <- Int64.sub (m.regs.(rind y)) (decosrc x m)
      |[x; Ind1 y] -> copier (sbytes_of_int64(Int64.sub (decosrc (Ind1 y) m) (decosrc x m))) (Option.get (map_addr(immer y))) m
      |[x; Ind2 y] -> copier (sbytes_of_int64(Int64.sub (decosrc (Ind2 y) m) (decosrc x m))) (Option.get (map_addr((m.regs.(rind y))))) m
      |[x; Ind3 (y, z)] -> copier (sbytes_of_int64(Int64.sub (decosrc (Ind3 (y, z)) m) (decosrc x m))) (Int64.to_int (immer y) + (Option.get (map_addr((m.regs.(rind z)))))) m

      
  (*| [x; Reg y] -> m.regs.(rind y) <- (Int64.add (decosrc x m) (m.regs.(rind y)))
  | [x; Ind1 y] -> m.mem.(Option.get (map_addr(immer y))) <- List.hd@@sbytes_of_int64 (Int64.sub (int64_of_sbytes (m.mem.(Option.get (map_addr(immer y)))::[])) (decosrc x m) )
  | [x; Ind2 y] -> m.mem.(Option.get (map_addr(m.regs.(rind y)))) <- List.hd@@sbytes_of_int64 (Int64.sub (int64_of_sbytes (m.mem.(Option.get (map_addr(m.regs.(rind y))))::[])) (decosrc x m) )
  | [x; Ind3 (y, z)] -> m.mem.(Int64.to_int (immer y) + (Option.get (map_addr((m.regs.(rind z)))))) <- List.hd@@sbytes_of_int64 (Int64.sub (int64_of_sbytes (m.mem.(Int64.to_int (immer y) + (Option.get (map_addr((m.regs.(rind z))))))::[])) (decosrc x m) )
  end
  *)

let pushq (l:operand) (m:mach) : unit = 
  let update = m.regs.(rind Rsp) <- (Int64.sub m.regs.(rind Rsp) 8L) in 
    m.mem.(Option.get (map_addr(m.regs.(rind Rsp)))) <- List.hd@@sbytes_of_int64@@decosrc l m

let popq (l:operand) (m:mach) : unit = 
  begin match l with 
    | Imm y -> invalid_arg "Dest cannot be imm"
    | Reg y -> let move = m.regs.(rind y) <- int64_of_sbytes ((m.mem.(Option.get (map_addr(m.regs.(rind Rsp)))))::[]) 
                in (m.regs.(rind Rsp) <- (Int64.add m.regs.(rind Rsp) 8L))
    | Ind1 y -> let move = m.mem.(Option.get (map_addr(immer y))) <- (m.mem.(Option.get (map_addr m.regs.(rind Rsp)))) 
                  in (m.regs.(rind Rsp) <- (Int64.add m.regs.(rind Rsp) 8L))
    | Ind2 y -> let move = (m.mem.(Option.get (map_addr((m.regs.(rind y))))) <- (m.mem.(Option.get (map_addr(m.regs.(rind Rsp)))))) 
                  in (m.regs.(rind Rsp) <- (Int64.add m.regs.(rind Rsp) 8L))
    | Ind3 (y, z) -> let move = m.mem.(Int64.to_int (immer y) + (Option.get (map_addr(m.regs.(rind z))))) <- (m.mem.(Option.get (map_addr(m.regs.(rind Rsp))))) 
                      in (m.regs.(rind Rsp) <- (Int64.add m.regs.(rind Rsp) 8L))
end

let andq (Reg x) (Reg y) (m:mach) : unit = 
  let value = Int64.logand (m.regs.(rind x)) (m.regs.(rind y)) in 
    let update = m.regs.(rind y) <- value  in
      begin 
        m.flags.fo <- false;
        if (sign value = 0) then m.flags.fz <- true else m.flags.fz <- false;
        if (sign value = -1) then m.flags.fs <- true else m.flags.fs <- false
      end
let orq (Reg x) (Reg y) (m:mach) : unit = 
  let value = Int64.logor (m.regs.(rind x)) (m.regs.(rind y)) in 
    let update = m.regs.(rind y) <- value  in
      begin 
        m.flags.fo <- false;
        if (sign value = 0) then m.flags.fz <- true else m.flags.fz <- false;
        if (sign value = -1) then m.flags.fs <- true else m.flags.fs <- false
      end

let imulq (Reg x) (Reg y) (m:mach) : unit = 
  let value = Int64.mul (m.regs.(rind x)) (m.regs.(rind y)) in
    begin 
      if ((sign (m.regs.(rind x)) <> sign ((m.regs.(rind y))) && sign(value) = 1) || (sign (m.regs.(rind x)) == sign ((m.regs.(rind y))) && sign(value) = -1)) 
        then m.flags.fo <- true 
      else m.flags.fo <- false; 
      m.regs.(rind y) <- value;
    end  
      
let shlq (Reg x) (Reg y) (m:mach) : unit =
  m.regs.(rind y) <- Int64.shift_left (m.regs.(rind y)) (Int64.to_int m.regs.(rind x))  

let cmpq (Reg x) (Reg y) (m:mach) =
  let src_value = m.regs.(rind x) in
    let dst_value = m.regs.(rind y) in
      let neg = negq (Reg x) m in 
        let neg_src = m.regs.(rind x) in 
      let res = Int64.add dst_value neg_src in
      begin 
        if (((sign dst_value = sign neg_src) && (sign res <> sign neg_src)) || ((src_value = Int64.min_int))) then m.flags.fo <- true 
        else m.flags.fo <- false; 
        if (sign res = -1) then m.flags.fs <- true 
        else m.flags.fs <- false;
        if (sign res = 0) then m.flags.fz <- true 
        else m.flags.fz <- false;

        (*Printf.printf "%s \n" (Int64.to_string res);        
        Printf.printf "%s \n" (Int.to_string@@sign res);
        Printf.printf "%s" (Bool.to_string m.flags.fo);
        Printf.printf "%s" (Bool.to_string m.flags.fs);
        Printf.printf "%s\n" (Bool.to_string m.flags.fz);*)
      end

let updater (m:mach) : unit = 
  match m with 
  | _ -> m.regs.(rind Rip) <- Int64.add (m.regs.(rind Rip)) 8L

let step (m:mach) : unit = 
  let content = (m.mem.(Option.get (map_addr(m.regs.(rind Rip))))) in
    let update = updater m in 
    begin match content with
    | InsB0 (opcode, [src; dest]) -> 
        begin match opcode with 
        | Movq -> movq [src; dest] m
        | Addq -> let move_src = movq [src; Reg R08] m in
                    let move_dst = movq [dest; Reg R09] m in 
                      let addition = addq (Reg R08) (Reg R09) m in 
                        movq [Reg R09; dest] m 

        | Subq -> subq [src; dest] m 
        | Andq -> let move_src = movq [src; Reg Rdi] m in
                    let move_dst = movq [dest; Reg Rsi] m in 
                      let log_and = andq (Reg Rdi) (Reg Rsi) m in 
                        movq [Reg Rsi; dest] m
        | Imulq -> let move_src = movq [src; Reg Rdi] m in
                    let move_dst = movq [dest; Reg Rsi] m in 
                      let mult = imulq (Reg Rdi) (Reg Rsi) m in 
                        movq [Reg Rsi; dest] m
        | Orq -> let move_src = movq [src; Reg Rdi] m in
                  let move_dst = movq [dest; Reg Rsi] m in 
                    let log_or = orq (Reg Rdi) (Reg Rsi) m in 
                      movq [Reg Rsi; dest] m
        | Shlq -> begin match src with
                    | Imm x -> let move_src = movq [src; Reg Rdi] m in
                                let move_dst = movq [dest; Reg Rsi] m in 
                                  let log_or = shlq (Reg Rdi) (Reg Rsi) m in 
                                    movq [Reg Rsi; dest] m
                    | Reg Rcx -> let move_src = movq [src; Reg Rdi] m in
                                  let move_dst = movq [dest; Reg Rsi] m in 
                                    let log_or = shlq (Reg Rdi) (Reg Rsi) m in 
                                      movq [Reg Rsi; dest] m
                    | _ -> invalid_arg "amt must be imm or rcx" 
                  end
        | Cmpq -> let move_src = movq [src; Reg Rdi] m in
            let move_dst = movq [dest; Reg Rsi] m in 
              cmpq (Reg Rdi) (Reg Rsi) m 
        | _ -> ()
        end
    | InsB0 (opcode, [src]) -> 
      begin match opcode with 
      | Negq ->  negq src m
      | Incq -> incq src m
      | Decq -> decq src m
      | Pushq -> pushq src m
      | Popq -> popq src m
      | _ -> ()
      end
    | InsB0 (Retq, []) -> popq (Reg Rip) m  
    | InsFrag -> invalid_arg "InsFrag"
    | Byte c -> invalid_arg "Byte"
    | _ -> invalid_arg "not an instruction" 
   end
(* Runs the machine until the rip register reaches a designated
   memory address. Returns the contents of %rax when the 
   machine halts. *)
let run (m:mach) : int64 = 
  while m.regs.(rind Rip) <> exit_addr do step m done;
  m.regs.(rind Rax)

(* assembling and linking --------------------------------------------------- *)

(* A representation of the executable *)
type exec = { entry    : quad              (* address of the entry point *)
            ; text_pos : quad              (* starting address of the code *)
            ; data_pos : quad              (* starting address of the data *)
            ; text_seg : sbyte list        (* contents of the text segment *)
            ; data_seg : sbyte list        (* contents of the data segment *)
            }

(* Assemble should raise this when a label is used but not defined *)
exception Undefined_sym of lbl

(* Assemble should raise this when a label is defined more than once *)
exception Redefined_sym of lbl

(* Convert an X86 program into an object file:
   - separate the text and data segments
   - compute the size of each segment
      Note: the size of an Asciz string section is (1 + the string length)
            due to the null terminator

   - resolve the labels to concrete addresses and 'patch' the instructions to 
     replace Lbl values with the corresponding Imm values.

   - the text segment starts at the lowest address
   - the data segment starts after the text segment

  HINT: List.fold_left and List.fold_right are your friends.
 *)


let rec text_len (p:prog) (i:int)  : int = 
  begin match p with 
  | [] -> i
  | x::xs -> begin 
            match x.asm with 
            | Text ins_list -> text_len xs (i + List.length ins_list)
            | _ -> text_len xs i
            
            end
end



let rec label_list (p:prog) (addr:quad) (lbl_addr: (string*quad) array) (i:int) : ((string*quad) array) = 
  begin match p with
  | [] -> lbl_addr
  | x::xs -> begin match x.asm with 
            | Text ins_list -> let u = Array.set lbl_addr i (x.lbl, addr) in 
                                let new_addr = (Int64.add (addr) (Int64.mul (Int64.of_int (List.length ins_list)) 8L)) in 
                                  (*let print = print_string (" " ^ (Int64.to_string new_addr)^ " ") in*) 
                                    label_list xs (new_addr) (lbl_addr) (i+1)
            | Data data_list -> let u = Array.set lbl_addr i (x.lbl, addr) in 
                                  let new_addr = (Int64.add (addr) (Int64.of_int(Int.mul (List.length data_list) 8))) in 
                                   (*let print = Printf.printf "%s" (Int64.to_string new_addr) in *)
                                    label_list xs (new_addr) (lbl_addr) (i+1)
            end
  end

let resolve_lbl (lbl_addr:(string*quad) array) (ins:ins) : sbyte list = 
  begin match ins with 
  | (x, [Imm Lbl lbl; y]) -> let addr = snd (Option.get (Array.find_opt (fun (x, z) -> String.equal x lbl) (lbl_addr))) in
                          sbytes_of_ins (x, [Imm (Lit addr); y])
  | (x, [Ind1 (Lbl lbl); y]) -> let addr = snd (Option.get (Array.find_opt (fun (x, z) -> String.equal x lbl) (lbl_addr))) in
                            sbytes_of_ins (x, [Ind1 (Lit addr); y])
  | (x, [Ind3 (Lbl lbl, z); y]) -> let addr = snd (Option.get (Array.find_opt (fun (x, z) -> String.equal x lbl) (lbl_addr))) in
                                sbytes_of_ins(x, [Ind3 (Lit addr, z); y])
  | (x, y) -> sbytes_of_ins (x, y) 
end

let rec create_txt_seg (p:prog) (lbl_addr:(string*quad) array) (text_seg : sbyte list ) : sbyte list = 
  match p with 
  | [] -> text_seg
  | x::xs -> match x.asm with 
            | Text ins_list -> let n = List.length ins_list in
                              let txt = [] in
                                begin
                                    print_string@@Int64.to_string@@int64_of_sbytes(resolve_lbl lbl_addr (List.nth ins_list 0));


                                create_txt_seg xs lbl_addr (text_seg);
                                end 
            | Data data_list -> create_txt_seg xs lbl_addr text_seg  
            


let assemble (p:prog) : exec =  
  let text_length = text_len p 0 in
    let data_pos = Int64.add (mem_bot) (Int64.of_int(Int.mul text_length 8)) in
      (*let print = print_string (" " ^ (Int64.to_string data_pos)^ " ") in*) 
       let lbl_address = Array.make (List.length p) ("empty", 0L) in 
        let lbl_list = label_list p mem_bot lbl_address 0 in
        (*let print = Array.iter (fun (x, y) -> Printf.printf "(%s,%d)" x (Int64.to_int y)) lbl_address in *)
          (*let print = Printf.printf "passed" in *)
            let text_seg = create_txt_seg p lbl_list [] in 
              let print = print_int (List.length text_seg) in
      let exe : exec =  
        {entry = Int64.add mem_bot 8L;
          text_pos = mem_bot; 
          data_pos = data_pos; 
          text_seg = text_seg; 
          data_seg = [];
        }
        in exe
(* Convert an object file into an executable machine state. 
    - allocate the mem array
    - set up the memory state by writing the symbolic bytes to the 
      appropriate locations 
    - create the inital register state
      - initialize rip to the entry point address
      - initializes rsp to the last word in memory 
      - the other registers are initialized to 0
    - the condition code flags start as 'false'

  Hint: The Array.make, Array.blit, and Array.of_list library functions 
  may be of use.
*)
let load {entry; text_pos; data_pos; text_seg; data_seg} : mach = 
  let regs = Array.make 17 0L
    in let mem = (Array.make mem_size (Byte '\x00'))
      in let writetxt = Array.blit (Array.of_list text_seg) 0 mem (Option.get (map_addr(text_pos))) (List.length text_seg) 
        in let write_data = Array.blit (Array.of_list data_seg) 0 mem (Option.get (map_addr(data_pos))) (List.length data_seg)
      in let m:mach = { 
      flags = {fo = false; fs = false; fz = false};
      regs = regs;
      mem = mem
    } 
    in let update_stack =  copier(sbytes_of_int64 exit_addr) (Option.get(map_addr(Int64.sub mem_top 8L))) m
    in let update_rip = (m.regs.(rind Rip) <- Int64.add mem_bot 8L) 
      in let update_rsp = (m.regs.(rind Rsp) <- Int64.sub mem_top 8L)
            in m
