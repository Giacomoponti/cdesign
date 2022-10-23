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
(*let debug_simulator = ref false

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
    let mov = movq [l; Reg R08] m in 
    let not = notq (Reg R08) m in
    let value = Int64.add (decosrc (Reg R08) m) (1L) in
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

  let rec copier (b: sbyte list) (addr: int)(m:mach) : unit =
    match b with
      |x::[]-> m.mem.(addr) <- x  
      |h::tl-> m.mem.(addr) <- h; copier tl (addr+1) m

  let subq (l:operand list) (m:mach) : unit =
    match l with
      |[x; Reg y] -> let src_value = decosrc x m in 
                      let dst_value = m.regs.(rind y) in 
                        let res = Int64.sub dst_value src_value in  
                          begin 
                            m.regs.(rind y) <- res;
                            if ((((sign (Int64.neg src_value)) <> (sign dst_value)) && ((sign (Int64.neg src_value)) = (sign res))) || (src_value = Int64.min_int)) then m.flags.fo <- true
                            else m.flags.fo <- false;  
                            if (sign res = 0) then m.flags.fz <- true
                            else m.flags.fz <- false;
                            if (sign res = -1) then m.flags.fs <- true
                            else m.flags.fs <- false; 
                          end
      |[x; Ind1 y] -> let src_value = decosrc x m in 
                        let dst_value = decosrc (Ind1 y) m in 
                          let res = Int64.sub dst_value src_value in
                            begin copier (sbytes_of_int64(res)) (Option.get (map_addr(immer y))) m;
                              if ((((sign (Int64.neg src_value)) <> (sign dst_value)) && ((sign (Int64.neg src_value)) = (sign res))) || (src_value = Int64.min_int)) then m.flags.fo <- true
                              else m.flags.fo <- false;  
                              if (sign res = 0) then m.flags.fz <- true
                              else m.flags.fz <- false;
                              if (sign res = -1) then m.flags.fs <- true
                              else m.flags.fs <- false; 
                            end
      |[x; Ind2 y] -> let src_value = decosrc x m in 
                        let dst_value = decosrc (Ind2 y) m in 
                          let res = Int64.sub dst_value src_value in
                            begin copier (sbytes_of_int64(res)) (Option.get (map_addr((m.regs.(rind y))))) m ;
                              if ((((sign (Int64.neg src_value)) <> (sign dst_value)) && ((sign (Int64.neg src_value)) = (sign res))) || (src_value = Int64.min_int)) then m.flags.fo <- true
                              else m.flags.fo <- false;  
                              if (sign res = 0) then m.flags.fz <- true
                              else m.flags.fz <- false;
                              if (sign res = -1) then m.flags.fs <- true
                              else m.flags.fs <- false; 
                            end
      |[x; Ind3 (y, z)] -> let src_value = decosrc x m in 
                            let dst_value = decosrc (Ind3 (y, z)) m in 
                              let res = Int64.sub dst_value src_value in
                                begin copier (sbytes_of_int64(res)) (Int64.to_int (immer y) + (Option.get (map_addr((m.regs.(rind z)))))) m;
                                  if ((((sign (Int64.neg src_value)) <> (sign dst_value)) && ((sign (Int64.neg src_value)) = (sign res))) || (src_value = Int64.min_int)) then m.flags.fo <- true
                                  else m.flags.fo <- false;  
                                  if (sign res = 0) then m.flags.fz <- true
                                  else m.flags.fz <- false;
                                  if (sign res = -1) then m.flags.fs <- true
                                  else m.flags.fs <- false; 
                                end
      
  (*| [x; Reg y] -> m.regs.(rind y) <- (Int64.add (decosrc x m) (m.regs.(rind y)))
  | [x; Ind1 y] -> m.mem.(Option.get (map_addr(immer y))) <- List.hd@@sbytes_of_int64 (Int64.sub (int64_of_sbytes (m.mem.(Option.get (map_addr(immer y)))::[])) (decosrc x m) )
  | [x; Ind2 y] -> m.mem.(Option.get (map_addr(m.regs.(rind y)))) <- List.hd@@sbytes_of_int64 (Int64.sub (int64_of_sbytes (m.mem.(Option.get (map_addr(m.regs.(rind y))))::[])) (decosrc x m) )
  | [x; Ind3 (y, z)] -> m.mem.(Int64.to_int (immer y) + (Option.get (map_addr((m.regs.(rind z)))))) <- List.hd@@sbytes_of_int64 (Int64.sub (int64_of_sbytes (m.mem.(Int64.to_int (immer y) + (Option.get (map_addr((m.regs.(rind z))))))::[])) (decosrc x m) )
  end
  *)

let decq (l:operand) (m:mach) : unit =
  begin match l with 
    | _ -> subq [Imm (Lit 1L); (l)] m
  end

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
    begin 
    begin match content with
    | InsB0 (opcode, [src; dest]) -> 
        begin match opcode with 
        | Movq -> movq [src; dest] m;
                    updater m;
                  Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n ");
        | Addq -> let move_src = movq [src; Reg R08] m in
                    let move_dst = movq [dest; Reg R09] m in 
                      let addition = addq (Reg R08) (Reg R09) m in 
                        movq [Reg R09; dest] m;
                        updater m;
                        Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n"); 

        | Subq ->  subq [src;dest] m;
                    updater m;
                  Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n");
        | Andq -> let move_src = movq [src; Reg R08] m in
                    let move_dst = movq [dest; Reg R09] m in 
                      let log_and = andq (Reg R08) (Reg R09) m in 
                        movq [Reg R08; dest] m;
                        updater m;
                        Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n");
        | Imulq -> let move_src = movq [src; Reg R08] m in
                    let move_dst = movq [dest; Reg R09] m in 
                      let mult = imulq (Reg R08) (Reg R09) m in 
                        movq [Reg R09; dest] m;
                        updater m;
                        Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n");
        | Orq -> let move_src = movq [src; Reg R08] m in
                  let move_dst = movq [dest; Reg R09] m in 
                    let log_or = orq (Reg R08) (Reg R09) m in 
                      movq [Reg R08; dest] m;
                      updater m;
                      Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n");
        | Shlq -> begin match src with
                    | Imm x -> let move_src = movq [src; Reg R08] m in
                                let move_dst = movq [dest; Reg R09] m in 
                                  let log_or = shlq (Reg R08) (Reg R09) m in 
                                    movq [Reg R09; dest] m;
                                    updater m;
                                    Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n");
                    | Reg Rcx -> let move_src = movq [src; Reg R08] m in
                                  let move_dst = movq [dest; Reg R09] m in 
                                    let log_or = shlq (Reg R08) (Reg R09) m in 
                                      movq [Reg R09; dest] m;
                                      updater m;
                                      Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n");
                    | _ -> invalid_arg "amt must be imm or rcx" 
                  end
        | Cmpq -> let move_src = movq [src; Reg R08] m in
            let move_dst = movq [dest; Reg R09] m in 
              cmpq (Reg R08) (Reg R09) m;
              updater m;
              Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n"); 
        | _ -> ()
        end
    | InsB0 (opcode, [src]) -> 
      begin match opcode with 
      | Negq ->  negq src m;
                   updater m;
                  Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n");
      | Incq -> incq src m;
                  updater m;
      Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n");
      | Decq -> decq src m;
                  updater m;
      Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n");
      | Pushq -> pushq src m;
                  updater m;
      Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n");
      | Popq -> popq src m;
                  updater m;
      Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n");
      | Jmp -> let move = movq [src; Reg R14] m in 
                movq [Reg R14; Reg Rip] m;
                updater m;
                Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n");
      | Callq -> let move = movq [src; Reg R14] m in 
                  let push = pushq (Reg Rip) in 
                    movq [Reg Rip; Reg R14] m;
                    Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n");
      | J cnd -> if interp_cnd m.flags cnd then 
                  movq [src; Reg Rip] m 
                 else updater m;
                  

      Printf.printf "%s \n" (string_of_opcode opcode ^ " finished \n"); 
                  
      | _ -> ()
      end
    | InsB0 (Retq, []) -> popq (Reg Rip) m;
        updater m;

        Printf.printf "%s \n" ("retq" ^ " finished \n");  
    | InsFrag -> invalid_arg "InsFrag"
    | Byte c -> invalid_arg "Byte"
    | _ -> invalid_arg "not an instruction" 
   end; 
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
            | Text ins_list -> if (Array.exists (fun (a) -> String.equal (fst a) x.lbl) lbl_addr) 
                                  then raise (Redefined_sym x.lbl)  
                               else
                                let u = Array.set lbl_addr i (x.lbl, addr) in 
                                let new_addr = (Int64.add (addr) (Int64.mul (Int64.of_int (List.length ins_list)) 8L)) in 
                                  (*let print = print_string (" " ^ (Int64.to_string new_addr)^ " ") in*) 
                                    label_list xs (new_addr) (lbl_addr) (i+1)
            | Data data_list -> let u = Array.set lbl_addr i (x.lbl, addr) in 
                                  let new_addr = (Int64.add (addr) (Int64.of_int(Int.mul (List.length data_list) 8))) in 
                                   (*let print = Printf.printf "%s" (Int64.to_string new_addr) in *)
                                    label_list xs (new_addr) (lbl_addr) (i+1)
            end
  end
let check_und (lbl:lbl) (lbl_addr:(string*quad) array) : int64 = 
  let addr = (Array.find_opt (fun (x, z) -> String.equal x lbl) (lbl_addr)) in
    (*let print = print_string (lbl ^ " " ^ (fst@@Option.get addr) ^ " \n") in*)
  if (Option.is_none addr) then
    raise (Undefined_sym lbl)
  else (snd (Option.get addr))

let resolve_lbl (lbl_addr:(string*quad) array) (ins:ins) : ins = 
    begin match ins with 
        | (x, [Imm Lbl lbl; y]) -> let addr = check_und lbl lbl_addr  in
                                (x, [Imm (Lit addr); y])
        | (x, [Ind1 (Lbl lbl); y]) -> let addr = check_und lbl lbl_addr in
                                  (x, [Ind1 (Lit addr); y])
        | (x, [Ind3 (Lbl lbl, z); y]) -> let addr = check_und lbl lbl_addr in
                                      (x, [Ind3 (Lit addr, z); y])
        | (x, [Imm Lbl lbl]) -> let addr = check_und lbl lbl_addr  in
                                (x, [Imm (Lit addr)])
        | (x, [Ind1 (Lbl lbl)]) -> let addr = check_und lbl lbl_addr in
                                  (x, [Ind1 (Lit addr)])
        | (x, [Ind3 (Lbl lbl, z)]) -> let addr = check_und lbl lbl_addr in
                                      (x, [Ind3 (Lit addr, z)])
        | (x, y) -> (x, y) 
end

let rec create_txt_seg (p:prog) (lbl_addr:(string*quad) array): sbyte list = 
  match p with 
  | [] -> []
  | x::xs -> match x.asm with 
            | Text ins_list -> let n = List.length ins_list in 
                                let txt = ref [] in 
                                for i = 0 to n-1 do
                                  txt := List.append (!txt) (sbytes_of_ins (resolve_lbl lbl_addr (List.nth ins_list i)));
                                  (*print_string ((string_of_ins (resolve_lbl lbl_addr (List.nth ins_list i))) ^ " \n");*)                                    
                                  (*print_int (List.length !txt)*)
                                done; 
                                List.append (!txt) (create_txt_seg xs lbl_addr); 
                              
            | Data data_list -> create_txt_seg xs lbl_addr  

let rec create_data_seg (p:prog) : sbyte list = 
  match p with 
  | [] -> []
  | x::xs -> match x.asm with 
            | Text ins_list -> create_data_seg xs
            | Data data_list ->  let n = List.length data_list in 
                                  let data = ref [] in
                                  begin 
                                    for i = 0 to n-1 do
                                      data := List.append (!data) (sbytes_of_data (List.nth data_list i));
                                      (*print_string ((string_of_ins (resolve_lbl lbl_addr (List.nth ins_list i))) ^ " \n");*)                                    
                                      (*print_int (List.length !txt)*)
                                    done; 
                                    List.append (!data) (create_data_seg xs);
                                  end
let assemble (p:prog) : exec =  
  let text_length = text_len p 0 in
    let data_pos = Int64.add (mem_bot) (Int64.of_int(Int.mul text_length 8)) in
      (*let print = print_string (" " ^ (Int64.to_string data_pos)^ " ") in*) 
       let lbl_address = Array.make (List.length p) ("empty", 0L) in 
        let lbl_list = label_list p mem_bot lbl_address 0 in
        let print = Array.iter (fun (x, y) -> Printf.printf "(%s,%d)" x (Int64.to_int y)) lbl_address in 
          let print = Printf.printf " passed \n" in 
            let text_seg = create_txt_seg p lbl_list in 
              let data_seg = create_data_seg p in 
                let check_main = check_und "main" lbl_address in 
              (*let print = print_int (List.length text_seg) in*)
                let exe : exec =  
                  {entry = Int64.add mem_bot 8L;
                    text_pos = mem_bot; 
                    data_pos = data_pos; 
                    text_seg = text_seg; 
                    data_seg = data_seg
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
            in m *)
            let interp_cnd { fo = fo; fs = fs; fz = fz } : cnd -> bool =
              fun x ->
                begin match x with
                | Eq -> fz
                | Neq -> not fz
                | Lt -> fs <> fo
                | Le -> (fs <> fo) || fz
                | Gt -> not ((fs <> fo) || fz)
                | Ge -> not (fs <> fo)
                end
                
            (* Maps an X86lite address into Some OCaml array index,
               or None if the address is not within the legal address space. *)
            let map_addr (addr : quad) : int option =
              if (Int64.compare addr mem_top) > 0
              then None
              else
                if (Int64.compare addr mem_bot) < 0
                then None
                else Some (Int64.to_int (Int64.sub addr 0x400000L))
              
            let (* Simulates one step of the machine:
                - fetch the instruction at %rip
                - compute the source and/or destination information from the operands
                - simulate the instruction semantics
                - update the registers and/or memory appropriately
                - set the condition flags
            *)
              calculate_ind (ol : operand list) (ind : int) (m : mach) : int64 =
              let operand = List.nth ol ind
              in
                match operand with
                | Ind1 i1 ->
                    (match i1 with | Lit l -> l | Lbl l -> failwith "Unresolved Label!")
                | Ind2 i2 -> m.regs.(rind i2)
                | Ind3 (i, r) ->
                    (match i with
                     | Lit l -> Int64.add m.regs.(rind r) l
                     | Lbl l -> failwith "Unresolved Label!")
                | _ -> failwith "Need to have operand of type Ind"
              
            let store_data_helper (i : int64) (data : int64) (m : mach) : unit =
              let addr_opt = map_addr i in
              let addr =
                match addr_opt with | Some x -> x | None -> raise X86lite_segfault in
            
              let sbl : sbyte list = sbytes_of_int64 data
              in
                (m.mem.(addr) <- List.nth sbl 0;
                 m.mem.(addr + 1) <- List.nth sbl 1;
                 m.mem.(addr + 2) <- List.nth sbl 2;
                 m.mem.(addr + 3) <- List.nth sbl 3;
                 m.mem.(addr + 4) <- List.nth sbl 4;
                 m.mem.(addr + 5) <- List.nth sbl 5;
                 m.mem.(addr + 6) <- List.nth sbl 6;
                 m.mem.(addr + 7) <- List.nth sbl 7)
              
            let store_data (ol : operand list) (ind : int) (m : mach) (data : int64) :
              unit =
              let addr_op = List.nth ol ind
              in
                match addr_op with
                | Reg r -> m.regs.(rind r) <- data
                | Ind1 _ | Ind2 _ | Ind3 _ ->
                    let i = calculate_ind ol ind m in store_data_helper i data m
                | Imm i -> failwith "Can't use immediates as locations"
            
            let get_data (l : int64) (m : mach) : int64 =
              let addr_opt = map_addr l in
              let addr =
                match addr_opt with | Some x -> x | None -> raise X86lite_segfault in
              let ret =
                int64_of_sbytes
                  [ m.mem.(addr + 0); m.mem.(addr + 1); m.mem.(addr + 2);
                    m.mem.(addr + 3); m.mem.(addr + 4); m.mem.(addr + 5);
                    m.mem.(addr + 6); m.mem.(addr + 7) ]
              in ret
            
                
            (* Decode_val simply returns the value of the operand or the value at the  *)
            (* address denoted by the operand. It only returns values, no addresses.   *)
                  
            let decode_val (ol : operand list) (ind : int) (m : mach) : int64 =
              let operand = List.nth ol ind
              in
                match operand with
                | Imm i ->
                    (match i with | Lit l -> l | Lbl l -> failwith "Unresolved Label!")
                | Reg r -> m.regs.(rind r)
                | Ind1 _ | Ind2 _ | Ind3 _ ->
                    let l = calculate_ind ol ind m in get_data l m
              
            let decode_amt (ol : operand list) (ind : int) (m : mach) : int64 =
              let operand = List.nth ol ind
              in
                match operand with
                | Imm i ->
                    (match i with | Lit l -> l | Lbl l -> failwith "Unresolved Label!")
                | Reg Rcx -> m.regs.(rind Rcx)
                | _ -> failwith "invalid operand for AMT"
              
            let store_byte (ol : operand list) (ind : int) (m : mach) (data : int64) :
              unit =
              let addr_op = List.nth ol ind
              in
                match addr_op with
                | Ind1 _ | Ind2 _ | Ind3 _ ->
                    let i = calculate_ind ol ind m in
                    let addr_opt = map_addr i in
                    let addr =
                      (match addr_opt with | Some x -> x | None -> raise X86lite_segfault) in
                    let sbl : sbyte list = sbytes_of_int64 data
                    in m.mem.(addr) <- List.nth sbl 0
                | Reg r ->
                    m.regs.(rind r) <-
                      Int64.logor
                        (Int64.shift_left (Int64.shift_right_logical m.regs.(rind r) 8) 8)
                        data
                | _ -> failwith "Immediates are invalid for addressing"
              
            let condition_flags (res : int64) (m : mach) : unit =
              (m.flags.fs <- (Int64.shift_right_logical res 63) = Int64.one;
               m.flags.fz <- res = Int64.zero);
              print_endline ("Cnd");
              print_endline (string_of_bool m.flags.fz)
              
            let set_condition_flags (res : Int64_overflow.t) (m : mach) : unit =
              (m.flags.fo <- res.Int64_overflow.overflow;
               condition_flags res.Int64_overflow.value m)
              
            let arith (op : opcode) (ol : operand list) (m : mach) : unit =
              match op with
              | Negq ->
                  let dest = decode_val ol 0 m in
                  let data = Int64_overflow.neg dest
                  in
                    (store_data ol 0 m data.Int64_overflow.value;
                     set_condition_flags data m;
                     if dest = Int64.min_int then m.flags.fo <- true)
              | Addq ->
                  let src = decode_val ol 0 m in
                  let dest = decode_val ol 1 m in
                     let res = Int64_overflow.add dest src in
                       store_data ol 1 m res.Int64_overflow.value;
                        set_condition_flags res m;
              | Cmpq ->
                  let src = decode_val ol 0 m in
                  let dest = decode_val ol 1 m in
                  let res = Int64_overflow.sub dest src
                  in
                  print_endline ("cmpq");
                  print_endline (Int64.to_string (src));
                  print_endline (Int64.to_string (dest));
                  print_endline (Int64.to_string (res.Int64_overflow.value));
            
                  set_condition_flags res m;
                  if src = Int64.min_int then m.flags.fo <- true
              | Subq ->
                  let src = decode_val ol 0 m in
                  let dest = decode_val ol 1 m in
                  let res = Int64_overflow.sub dest src      
                  in
                  print_endline ("subq");
                  print_endline (Int64.to_string (src));
                  print_endline (Int64.to_string (dest));
                  print_endline (Int64.to_string (res.Int64_overflow.value));
                    (store_data ol 1 m res.Int64_overflow.value;
                     set_condition_flags res m;
                     if src = Int64.min_int then m.flags.fo <- true)
              | Imulq ->
                  let src = decode_val ol 0 m in
                  let reg = decode_val ol 1 m in
                  let res = Int64_overflow.mul reg src
                  in
                    (store_data ol 1 m res.Int64_overflow.value;
                     set_condition_flags res m);
                    print_endline("imulq")
              | Incq ->
                  let src = decode_val ol 0 m in
                  let res = Int64_overflow.succ src
                  in
                    (store_data ol 0 m res.Int64_overflow.value;
                     set_condition_flags res m)
              | Decq ->
                  let src = decode_val ol 0 m in
                  let res = Int64_overflow.pred src
                  in
                    (store_data ol 0 m res.Int64_overflow.value;
                     set_condition_flags res m;
                     if src = Int64.min_int then m.flags.fo <- true);
                    
                    print_endline("Decq")
              | _ -> ()
              
            let logic (op : opcode) (ol : operand list) (m : mach) : unit =
              match op with
              | Notq ->
                  let dest = decode_val ol 0 m in
                  let res = Int64.lognot dest in store_data ol 0 m res
              | Andq ->
                  let src = decode_val ol 0 m in
                  let dest = decode_val ol 1 m in
                  let res = Int64.logand dest src
                  in (store_data ol 1 m res; condition_flags res m; m.flags.fo <- false)
              | Orq ->
                  let src = decode_val ol 0 m in
                  let dest = decode_val ol 1 m in
                  let res = Int64.logor dest src
                  in (store_data ol 1 m res; condition_flags res m; m.flags.fo <- false)
              | Xorq ->
                  let src = decode_val ol 0 m in
                  let dest = decode_val ol 1 m in
                  let res = Int64.logxor dest src
                  in (store_data ol 1 m res; condition_flags res m; m.flags.fo <- false)
              | _ -> ()
              
            let bitwise (op : opcode) (ol : operand list) (m : mach) : unit =
              match op with
              | Sarq ->
                  let amt = Int64.to_int (decode_amt ol 0 m) in
                  let dest = decode_val ol 1 m in
                  let res = Int64.shift_right dest amt
                  in
                    (store_data ol 1 m res;
                     if amt = 0 then () else condition_flags res m;
                     if amt = 1 then m.flags.fo <- false else ())
              | Shlq ->
                  let amt = Int64.to_int (decode_amt ol 0 m) in
                  let dest = decode_val ol 1 m in
                  let res = Int64.shift_left dest amt
                  in
                    (store_data ol 1 m res;
                     if amt = 0 then () else condition_flags res m;
                     if
                       (amt = 1) &&
                         (Int64.shift_right_logical dest 63
                          <> (Int64.logand (Int64.shift_right_logical dest 62) 1L))
                     then m.flags.fo <- true
                     else ())
              | Shrq ->
                  let amt = Int64.to_int (decode_amt ol 0 m) in
                  let dest = decode_val ol 1 m in
                  let res = Int64.shift_right_logical dest amt
                  in
                    (store_data ol 1 m res;
                     if amt = 0 then () else condition_flags res m;
                     if amt = 1
                     then m.flags.fo <- (Int64.shift_right_logical dest 63) = Int64.one
                     else ())
              | Set cc ->
                  if interp_cnd {fo = m.flags.fo; fs = m.flags.fs; fz = m.flags.fz} cc
                  then store_byte ol 0 m Int64.one
                  else store_byte ol 0 m Int64.zero
              | _ -> ()
              
            let push (ol : operand list) (m : mach) : unit =
              let src = decode_val ol 0 m
              in
                (m.regs.(rind Rsp) <- Int64.sub m.regs.(rind Rsp) 8L;
                 let opl = [ Ind2 Rsp ] in store_data opl 0 m src)
              
            let pop (ol : operand list) (m : mach) : unit =
              let opl = [Ind2 Rsp] in
              let value = decode_val opl 0 m
              in
                store_data ol 0 m value;
                 m.regs.(rind Rsp) <- Int64.add m.regs.(rind Rsp) 8L
              
            let dmove (op : opcode) (ol : operand list) (m : mach) : unit =
              match op with
              | Leaq -> let maddr = calculate_ind ol 0 m in store_data ol 1 m maddr
              | Movq -> let src = decode_val ol 0 m in store_data ol 1 m src;
                print_endline("Movq");
              | Pushq -> push ol m
              | Popq -> pop ol m
              | _ -> ()
              
            let flow (op : opcode) (ol : operand list) (m : mach) : unit =
              begin match op with
              | Jmp -> let src = decode_val ol 0 m in m.regs.(rind Rip) <- src
              | Callq ->
                  m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) 4L;
                  let ripl = [ Reg Rip ] in
                  push ripl m;
                  print_endline("callq");
                  print_endline(Int64.to_string m.regs.(rind Rip));
                  let src = decode_val ol 0 m in
                  m.regs.(rind Rip) <- src;
                  print_endline(Int64.to_string m.regs.(rind Rip))
              | Retq -> let ripl = [Reg Rip] in pop ripl m;
                print_endline("retq");
                print_endline(Int64.to_string m.regs.(rind Rip))
              | J cc ->
                  if interp_cnd {fo = m.flags.fo; fs = m.flags.fs; fz = m.flags.fz} cc
                  then (m.regs.(rind Rip) <- decode_val ol 0 m;       
                  print_endline("J true"))
                  else (m.regs.(rind Rip) <- 
                  Int64.add m.regs.(rind Rip) 4L;       
                  print_endline("J false"))
              | _ -> ()
              end
              
            let interpret (insn : ins) (m : mach) : unit =
              match insn with
              | (op, ol) ->
                  begin match op with
                   | Cmpq | Negq | Addq | Subq | Imulq | Incq | Decq -> arith op ol m; 
                    m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) 4L
                   | Notq | Andq | Orq | Xorq -> logic op ol m;
                    m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) 4L
                   | Shlq | Sarq | Shrq | Set _ -> bitwise op ol m;
                    m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) 4L
                   | Leaq | Movq | Pushq | Popq -> dmove op ol m;
                    m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) 4L
                   | Jmp | J _ | Callq | Retq -> flow op ol m
                  end
                  
            let service (m : mach) (elem : sbyte) : unit =
              match elem with
              | InsB0 ins ->
                  interpret ins m
              | InsFrag -> m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) Int64.one
              | Byte b -> m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) Int64.one
              
            let step (m : mach) : unit =
              let cur_insn = m.regs.(rind Rip) in
              let addr_opt = map_addr cur_insn in
              let addr =
                match addr_opt with | Some x -> x | None -> 
                  print_endline("step segfault"); raise X86lite_segfault
              in service m m.mem.(addr)
              
            (* Runs the machine until the rip register reaches a designated memory     *)
            (* address.                                                                *)
            let run (m : mach) : int64 =
              (while m.regs.(rind Rip) <> exit_addr do step m done; m.regs.(rind Rax))
              
            (* assembling and linking --------------------------------------------------- *)
            (* A representation of the executable *)
            type exec =
              { entry : quad; (* address of the entry point *) text_pos : quad;
                (* starting address of the code *) data_pos : quad;
                (* starting address of the data *) text_seg : sbyte list;
                (* contents of the text segment *) data_seg : sbyte list
              }
            
            (* contents of the data segment *)
            (* Assemble should raise this when a label is used but not defined *)
            exception Undefined_sym of lbl
              
            (* Assemble should raise this when a label is defined more than once *)
            exception Redefined_sym of lbl
              
            (* Convert an X86 program into an object file:
               - separate the text and data segments
               - compute the size of each segment
                  Note: the size of an Asciz string section is (1 + the string length)
               - resolve the labels to concrete addresses and 'patch' the instructions to 
                 replace Lbl values with the corresponding Imm values.
               - the text segment starts at address 0
               - the data segment starts after the text segment
              HINT: List.fold_left and List.fold_right are your friends.
             *)
            (* Get size of text and data segments *)
            let get_size (option : int) (size : int64) (e : elem) : int64 =
              (* Data size is computed differently for different data types *)
              let data_size (d_size : int64) (d : data) : int64 =
                match d with
                | Asciz a ->
                    Int64.add (Int64.add d_size 1L) (Int64.of_int (String.length a))
                | Quad (Lit i) -> Int64.add d_size 8L
                | _ -> size
              in
                (* text size is just 4 times the length of the ins list *)
                match (option, (e.asm)) with
                | (0, Text t) -> Int64.add size (Int64.of_int ((List.length t) * 4))
                | (1, Data d) -> Int64.add size (List.fold_left data_size 0L d)
                | (_, _) -> size
              
            (* Tuple to represent entry in the symbol table *)
            type tpl = (lbl * quad)
            
            (* Find label to address mapping in symbol table, return address or
               if not present, then -1L or raise exception depending on opt *)
            let rec find_lbl (tl : tpl list) (l : lbl) (opt : int) : int64 =
              match tl with
              | (a, b) :: tail -> if a = l then b else find_lbl tail l opt
              | [] -> if opt = 0 then (-1L) else raise (Undefined_sym l)
              
            (* Translate the labels into the addresses that they will be found in *)
            let translate (opt : int) (tl, s) (e : elem) : ((tpl list) * int64) =
              let data_size (d_size : int64) (d : data) : int64 =
                match d with
                | Asciz a ->
                    Int64.add (Int64.add d_size 1L) (Int64.of_int (String.length a))
                | Quad (Lit i) -> Int64.add d_size 8L
                | _ -> s
              in
                match (opt, (e.asm)) with
                | (0, Text t) ->
                    let new_size = Int64.add s (Int64.of_int ((List.length t) * 4)) in
                    let addr = find_lbl tl e.lbl 0
                    in
                      if addr = (-1L)
                      then ((List.append tl [ ((e.lbl), s) ]), new_size)
                      else raise (Redefined_sym e.lbl)
                | (1, Data d) ->
                    let new_size = Int64.add s (List.fold_left data_size 0L d) in
                    let addr = find_lbl tl e.lbl 0
                    in
                      if addr = (-1L)
                      then ((List.append tl [ ((e.lbl), s) ]), new_size)
                      else raise (Redefined_sym e.lbl)
                | (_, _) -> (tl, s)
              
            (* Replace operands in the operands list, need to consider three cases where
               where labels can occur *)
            let rec replace_operands (tl : tpl list) (ol : operand list) : operand list =
              match ol with
              | Imm (Lbl l) :: tail ->
                  List.append [ Imm (Lit (find_lbl tl l 1)) ] (replace_operands tl tail)
              | Ind1 (Lbl l) :: tail ->
                  List.append [ Ind1 (Lit (find_lbl tl l 1)) ] (replace_operands tl tail)
              | Ind3 ((Lbl l), r) :: tail ->
                  List.append [ Ind3 ((Lit (find_lbl tl l 1)), r) ]
                    (replace_operands tl tail)
              | [] -> []
              | r :: tail -> List.append [ r ] (replace_operands tl tail)
              
            (* Replace each operand in operand list recursively *)
            let replace_each (tl : tpl list) (s : sbyte list) (i : ins) : sbyte list =
              match i with
              | (op, ol) -> List.append s (sbytes_of_ins (op, (replace_operands tl ol)))
              
            (* Replace data label, only one case is considered *)
            let replace_data (tl : tpl list) (sl : sbyte list) (d : data) : sbyte list =
              match d with
              | Quad (Lit i) -> List.append sl (sbytes_of_data d)
              | Asciz s -> List.append sl (sbytes_of_data d)
              | Quad (Lbl l) ->
                  List.append sl (sbytes_of_data (Quad (Lit (find_lbl tl l 1))))
              
            (* General replace function*)
            (* Folds left over all the insn in the insn list or the data in the data list
                 replacing each instance of a lable if possible *)
            let replace (opt : int) (tl : tpl list) (sbl : sbyte list) (e : elem) :
              sbyte list =
              let replace_all = replace_each tl in
              let replace_dat = replace_data tl
              in
                match (opt, (e.asm)) with
                | (0, Text t) -> List.append sbl (List.fold_left replace_all [] t)
                | (1, Data d) -> List.append sbl (List.fold_left replace_dat [] d)
                | (_, _) -> sbl
              
            (* Main Assemble program *)
            let assemble (p : prog) : exec =
              let text_func = get_size 0 in (* Get size of text and data segments *)
              let text_size = List.fold_left text_func 0L p in
              let translate_text = translate 0 in
              let translate_data = translate 1 in
              (* Create symbol table. Consider ins first as text seg appears first *)
              let (addr, size) = List.fold_left translate_text ([], 0x400000L) p in
              let (addr2, size2) = List.fold_left translate_data (addr, size) p in
              let e = find_lbl addr "main" 1 in
              let replace_text = replace 0 addr2 in
              let replace_data = replace 1 addr2 in
              (* sbytes list of patched data and ins *)
              let ts = List.fold_left replace_text [] p in
              let ds = List.fold_left replace_data [] p
              in
                {
                  entry = e;
                  text_pos = 0x400000L;
                  data_pos = Int64.add 0x400000L text_size;
                  text_seg = ts;
                  data_seg = ds;
                }
              
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
            let load
              {
                entry = entry;
                text_pos = text_pos;
                data_pos = data_pos;
                text_seg = text_seg;
                data_seg = data_seg
              } : mach = (* [[text_seg][data_seg]........[exit_addr]] *)
              (* 0                           FFF8     FFFF *)
              (* The following commands create the above structure, 
                 by making arrays for each segment and then apppending them *)
              let tmp = Array.make 0xFFF8 InsFrag in
              let tmp0 = Array.of_list text_seg in
              let tmp1 = Array.of_list data_seg in
              let tmp2 = Array.append tmp0 tmp1
              in
                (Array.blit tmp2 0 tmp 0 (Array.length tmp2);
                 let tmp4 = Array.of_list (sbytes_of_int64 exit_addr) in
                 let memory = Array.append tmp tmp4 in
                 (* All flags are false in the beginning *)
                 let flgs = { fo = false; fs = false; fz = false; } in
                 (* Create 17 registers, fill Rip and Rsp *)
                 let registers = Array.make 17 0L
                 in
                   (Array.set registers (rind Rip) entry;
                    Array.set registers (rind Rsp) 0x40FFF8L;
                    { flags = flgs; regs = registers; mem = memory; }))
