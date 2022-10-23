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

let sign (n:quad) : (int) =  
  Int64.compare n 0L

let stater (m:mach) : unit =
  match m with
    |_ -> print_string ("Rbx: " ^ (Int64.to_string(m.regs.(rind Rbx))) ^ " Rax: " ^ (Int64.to_string(m.regs.(rind Rax))) ^ "*65528: " ^ (Int64.to_string@@int64_of_sbytes((m.mem.(65528))::[])) ^ "END STATE ")


(* Interpret a condition code with respect to the given flags. *)
let interp_cnd {fo; fs; fz} : cnd -> bool = function
  |Eq -> (if fz == true then (true) else (false))
  |Neq -> (if fz == false then (true) else (false))
  |Lt -> (if fs != fo then (true) else (false))
  |Le -> (if ((fs != fo) || fz) then (true) else (false))
  |Gt -> (if ((fs == fo) && (fz == false)) then (true) else (false))
  |Ge -> (if fs == fo then true else false)


(* Maps an X86lite address into Some OCaml array index,
   or None if the address is not within the legal address space. *)
let map_addr (addr:quad) : int option =
  let int_addr = Int64.to_int(Int64.sub addr mem_bot) in 
    if (mem_bot <= addr && addr < mem_top) then Some int_addr else None 


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
    |_ -> failwith "Wrong operand"
end

let addrcalc (o:operand) (m:mach) : int64 =
  begin match o with
    |Imm y -> invalid_arg "Dest shouldnt be imm bruh"
    |Ind1 y -> (match y with | Lit l -> l | Lbl l -> failwith "Unresolved Label!")
    |Ind2 y -> m.regs.(rind y)
    |Ind3 (y, z) -> Int64.add (immer y) (m.regs.(rind z))
  end

let storer (data:int64) (a:int64) (m:mach) = 
  let addr = Option.get(map_addr a) in 
    let sbytes = sbytes_of_int64 data in
      m.mem.(addr) <- List.nth sbytes 0;
      m.mem.(addr+1) <- List.nth sbytes 1;
      m.mem.(addr+2) <- List.nth sbytes 2;
      m.mem.(addr+3) <- List.nth sbytes 3;
      m.mem.(addr+4) <- List.nth sbytes 4;
      m.mem.(addr+5) <- List.nth sbytes 5;
      m.mem.(addr+6) <- List.nth sbytes 6;
      m.mem.(addr+7) <- List.nth sbytes 7

let store (dst:operand) (data:int64) (m:mach) = 
  match dst with 
    |Reg x -> m.regs.(rind x) <- data
    |Ind1 _ |Ind2 _ |Ind3 _ -> storer data (addrcalc dst m) m
    |_ -> failwith "Destination cannot be Imm!"

let load (src:operand) (m:mach) : int64 = 
  match src with 
    |Reg x -> m.regs.(rind x) 
    |Imm l -> immer l
    |Ind1 _ | Ind2 _ |Ind3 _ -> 
      let addr = Option.get@@map_addr(addrcalc src m) in 
        let data = int64_of_sbytes [m.mem.(addr); m.mem.(addr + 1); m.mem.(addr + 2);
                                    m.mem.(addr + 3); m.mem.(addr + 4); m.mem.(addr + 5);
                                    m.mem.(addr + 6); m.mem.(addr + 7)];
        in data

let fetcher (s:sbyte) : ins =
  begin match s with
    |InsB0 x -> x
    |_ -> failwith "Wrong sbyte"
end

let fetchop (m:mach) : ins = fetcher (m.mem.(Option.get (map_addr((m.regs.(rind Rip))))))

let sbyte_list (a: sbyte array) (start: int) : sbyte list =
  Array.to_list (Array.sub a start 8)

let rec copier (b: sbyte list) (addr: int)(m:mach) : unit =
  match b with
    |x::[]-> m.mem.(addr) <- x  
    |h::tl-> m.mem.(addr) <- h; copier tl (addr+1) m

let movq (l:operand list) (m:mach) : unit =
  match l with
    |[x; y] -> store y (load x m) m

let pushq (l:operand) (m:mach) : unit = 
  let update = m.regs.(rind Rsp) <- (Int64.sub m.regs.(rind Rsp) 8L) in store (Ind2 Rsp) (load l m) m

let popq (l:operand) (m:mach) : unit = store l (load (Ind2 Rsp) m) m; m.regs.(rind Rsp) <- (Int64.add m.regs.(rind Rsp) 8L)

let addq (l:operand list) (m:mach) : unit =
  match l with
    |[x; y] ->
      let src = load x m in
      let dst = load y m in
      let update = store y (Int64.add src dst) m in
      let res = load y m in
        begin 
          if (((sign src) = (sign dst)) && ((sign src) <> (sign res))) then m.flags.fo <- true
          else m.flags.fo <- false;  
          if (sign res = 0) then m.flags.fz <- true
          else m.flags.fz <- false;
          if (sign res = -1) then m.flags.fs <- true
          else m.flags.fs <- false; 
        end

let subq (l:operand list) (m:mach) : unit =
  match l with
    |[x; y] ->
      let src = load x m in
      let dst = load y m in
      let update = store y (Int64.sub dst src) m in
      let res = load y m in
        begin 
          if ((src = Int64.min_int) || ((sign src) = (sign dst)) && ((sign src) <> (sign res))) then m.flags.fo <- true
          else m.flags.fo <- false;  
          if (sign res = 0) then m.flags.fz <- true
          else m.flags.fz <- false;
          if (sign res = -1) then m.flags.fs <- true
          else m.flags.fs <- false; 
        end
    
let imulq (Reg x) (Reg y) (m:mach) : unit = 
  let value = Int64.mul (m.regs.(rind x)) (m.regs.(rind y)) in
    begin 
      if ((sign (m.regs.(rind x)) <> sign ((m.regs.(rind y))) && sign(value) = 1) || (sign (m.regs.(rind x)) == sign ((m.regs.(rind y))) && sign(value) = -1)) 
        then m.flags.fo <- true 
      else m.flags.fo <- false; 
      m.regs.(rind y) <- value;
    end  

let incq (l:operand) (m:mach) : unit = store l (Int64.add (load l m) 1L) m

let decq (l:operand) (m:mach) : unit = store l (Int64.sub (load l m) 1L) m

let notq (l:operand) (m:mach) : unit  = store l (Int64.lognot (load l m)) m

let andq (l:operand list) (m:mach) = 
  match l with
    |[x; y] ->
      let src = load x m in
      let dst = load y m in
      let update = store y (Int64.logand (load x m) (load y m)) m in
      let res = load y m in 
        begin 
          m.flags.fo <- false;
          if (sign res = 0) then m.flags.fz <- true
          else m.flags.fz <- false;
          if (sign res = -1) then m.flags.fs <- true
          else m.flags.fs <- false; 
        end

let orq (Reg x) (Reg y) (m:mach) : unit = 
  let value = Int64.logor (m.regs.(rind x)) (m.regs.(rind y)) in 
    let update = m.regs.(rind y) <- value  in
      begin 
        m.flags.fo <- false;
        if (sign value = 0) then m.flags.fz <- true else m.flags.fz <- false;
        if (sign value = -1) then m.flags.fs <- true else m.flags.fs <- false
      end

let shlq(l: operand list) (m:mach) : unit =
  match l with
    |[x; y] -> store y (Int64.shift_left (load y m) (Int64.to_int(load x m))) m

let leaq (l:operand list) (m:mach) : unit = 
  match l with
    |[x; y] -> store y (load x m) m

let negq (l:operand) (m:mach) : unit = 
  let check =  if (Int64.equal (load l m) (Int64.min_int)) then m.flags.fo <- true 
                else m.flags.fo <- false in
  let not = notq l m in
  let update = store l (Int64.add (load l m) (1L)) m in
  let value = load l m in
    begin 
      if ((sign value) = 0) then m.flags.fz <- true else m.flags.fz <- false;
      if ((sign value) = -1) then m.flags.fs <- true else m.flags.fs <- false;
      (*Printf.printf "%s \n" (Int64.to_string value);        
      Printf.printf "%s \n" (Int.to_string@@sign value);
      Printf.printf "%s" (Bool.to_string m.flags.fo);
      Printf.printf "%s" (Bool.to_string m.flags.fs);
      Printf.printf "%s\n" (Bool.to_string m.flags.fz);*)
    end
  
    
let cmpq (l:operand list) (m:mach) =
  match l with 
    |[src; dest] -> 
      let move_src = movq [src; Reg R08] m in
        let move_dst = movq [dest; Reg R09] m in 
          let src_value = m.regs.(rind R08) in
            let dst_value = m.regs.(rind R09) in
              let neg = negq (Reg R08) m in 
                let neg_src = m.regs.(rind R08) in 
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

let jmp (l:operand) (m:mach) = m.regs.(rind Rip) <- load l m

let j (cc:cnd) (l:operand) (m:mach) =
  if (interp_cnd m.flags) cc then m.regs.(rind Rip) <- load l m

    

let updater (m:mach) : unit =
  match m with
    |_ -> m.regs.(rind Rip) <- Int64.add (m.regs.(rind Rip)) 8L

let step (m:mach) : unit = 
  let instr = (fetchop m) in
    let update = updater m in  
      let mat = match instr with
        |(Movq, ops) -> movq ops m 
        |(Negq, ops) -> negq (List.hd ops) m
        |(Addq, ops) -> addq ops m
        |(Subq, ops) -> subq ops m
        |(Incq, ops) -> incq (List.hd ops) m
        |(Decq, ops) -> decq (List.hd ops) m
        |(Leaq, ops) -> leaq ops m
        |(Notq, ops) -> notq (List.hd ops) m
        |(Andq, ops) -> andq ops m
        |(Pushq, ops) -> pushq (List.hd ops) m
        |(Shlq, ops) -> shlq ops m
        |(Cmpq, ops) -> cmpq ops m 
        |(Popq, ops) -> popq (List.hd ops) m
        |(Jmp, ops) -> jmp (List.hd ops) m
        |(J cnd, ops) -> j cnd (List.hd ops) m 
        |(Retq, ops) -> popq (Reg Rip) m
        |(opcode, [src; dest]) -> 
          begin match opcode with 
          |Imulq -> let move_src = movq [src; Reg R14] m in
                    let move_dst = movq [dest; Reg R15] m in 
                      let mult = imulq (Reg R14) (Reg R15) m in 
                        movq [Reg R15; dest] m
          | Orq -> let move_src = movq [src; Reg R14] m in
                    let move_dst = movq [dest; Reg R15] m in 
                      let log_or = orq (Reg R14) (Reg R15) m in 
                        movq [Reg R15; dest] m
          end
                         
        |_ -> () in 
      print_string ((string_of_ins instr) ^ " finished! \n") 
        

  
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
                  {entry = check_main ;
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
      in let update_rip = (m.regs.(rind Rip) <- text_pos) 
        in let u_rsp = (m.regs.(rind Rsp) <- Int64.sub mem_top 8L) in m
