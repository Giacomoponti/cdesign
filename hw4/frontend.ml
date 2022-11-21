open Ll
open Llutil
open Ast

(* instruction streams ------------------------------------------------------ *)

(* As in the last project, we'll be working with a flattened representation
   of LLVMlite programs to make emitting code easier. This version
   additionally makes it possible to emit elements will be gathered up and
   "hoisted" to specific parts of the constructed CFG
   - G of gid * Ll.gdecl: allows you to output global definitions in the middle
     of the instruction stream. You will find this useful for compiling string
     literals
   - E of uid * insn: allows you to emit an instruction that will be moved up
     to the entry block of the current function. This will be useful for 
     compiling local variable declarations
*)

type elt = 
  | L of Ll.lbl             (* block labels *)
  | I of uid * Ll.insn      (* instruction *)
  | T of Ll.terminator      (* block terminators *)
  | G of gid * Ll.gdecl     (* hoisted globals (usually strings) *)
  | E of uid * Ll.insn      (* hoisted entry block instructions *)

type stream = elt list
let ( >@ ) x y = y @ x
let ( >:: ) x y = y :: x
let lift : (uid * insn) list -> stream = List.rev_map (fun (x,i) -> I (x,i))

(* Build a CFG and collection of global variable definitions from a stream *)
let cfg_of_stream (code:stream) : Ll.cfg * (Ll.gid * Ll.gdecl) list  =
    let gs, einsns, insns, term_opt, blks = List.fold_left
      (fun (gs, einsns, insns, term_opt, blks) e ->
        match e with
        | L l ->
           begin match term_opt with
           | None -> 
              if (List.length insns) = 0 then (gs, einsns, [], None, blks)
              else failwith @@ Printf.sprintf "build_cfg: block labeled %s has\
                                               no terminator" l
           | Some term ->
              (gs, einsns, [], None, (l, {insns; term})::blks)
           end
        | T t  -> (gs, einsns, [], Some (Llutil.Parsing.gensym "tmn", t), blks)
        | I (uid,insn)  -> (gs, einsns, (uid,insn)::insns, term_opt, blks)
        | G (gid,gdecl) ->  ((gid,gdecl)::gs, einsns, insns, term_opt, blks)
        | E (uid,i) -> (gs, (uid, i)::einsns, insns, term_opt, blks)
      ) ([], [], [], None, []) code
    in
    match term_opt with
    | None -> failwith "build_cfg: entry block has no terminator" 
    | Some term -> 
       let insns = einsns @ insns in
       ({insns; term}, blks), gs


(* compilation contexts ----------------------------------------------------- *)

(* To compile OAT variables, we maintain a mapping of source identifiers to the
   corresponding LLVMlite operands. Bindings are added for global OAT variables
   and local variables that are in scope. *)

module Ctxt = struct

  type t = (Ast.id * (Ll.ty * Ll.operand)) list
  let empty = []

  (* Add a binding to the context *)
  let add (c:t) (id:id) (bnd:Ll.ty * Ll.operand) : t = (id,bnd)::c

  (* Lookup a binding in the context *)
  let lookup (id:Ast.id) (c:t) : Ll.ty * Ll.operand = List.assoc id c

  (* Lookup a function, fail otherwise *)
  let lookup_function (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    match List.assoc id c with
    | Ptr (Fun (args, ret)), g -> Ptr (Fun (args, ret)), g
    | _ -> failwith @@ id ^ " not bound to a function"

  let lookup_function_option (id:Ast.id) (c:t) : (Ll.ty * Ll.operand) option =
    try Some (lookup_function id c) with _ -> None
  
end

(* compiling OAT types ------------------------------------------------------ *)

(* The mapping of source types onto LLVMlite is straightforward. Booleans and ints
   are represented as the corresponding integer types. OAT strings are
   pointers to bytes (I8). Arrays are the most interesting type: they are
   represented as pointers to structs where the first component is the number
   of elements in the following array.

   The trickiest part of this project will be satisfying LLVM's rudimentary type
   system. Recall that global arrays in LLVMlite need to be declared with their
   length in the type to statically allocate the right amount of memory. The 
   global strings and arrays you emit will therefore have a more specific type
   annotation than the output of cmp_rty. You will have to carefully bitcast
   gids to satisfy the LLVM type checker.
*)

let rec cmp_ty : Ast.ty -> Ll.ty = function
  | Ast.TBool  -> I1
  | Ast.TInt   -> I64
  | Ast.TRef r -> Ptr (cmp_rty r)

and cmp_rty : Ast.rty -> Ll.ty = function
  | Ast.RString  -> I8
  | Ast.RArray u -> Struct [I64; Array(0, cmp_ty u)]
  | Ast.RFun (ts, t) -> 
      let args, ret = cmp_fty (ts, t) in
      Fun (args, ret)

and cmp_ret_ty : Ast.ret_ty -> Ll.ty = function
  | Ast.RetVoid  -> Void
  | Ast.RetVal t -> cmp_ty t

and cmp_fty (ts, r) : Ll.fty =
  List.map cmp_ty ts, cmp_ret_ty r


let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Eq | Neq | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)

let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* Compiler Invariants

   The LLVM IR type of a variable (whether global or local) that stores an Oat
   array value (or any other reference type, like "string") will always be a
   double pointer.  In general, any Oat variable of Oat-type t will be
   represented by an LLVM IR value of type Ptr (cmp_ty t).  So the Oat variable
   x : int will be represented by an LLVM IR value of type i64*, y : string will
   be represented by a value of type i8**, and arr : int[] will be represented
   by a value of type {i64, [0 x i64]}**.  Whether the LLVM IR type is a
   "single" or "double" pointer depends on whether t is a reference type.

   We can think of the compiler as paying careful attention to whether a piece
   of Oat syntax denotes the "value" of an expression or a pointer to the
   "storage space associated with it".  This is the distinction between an
   "expression" and the "left-hand-side" of an assignment statement.  Compiling
   an Oat variable identifier as an expression ("value") does the load, so
   cmp_exp called on an Oat variable of type t returns (code that) generates a
   LLVM IR value of type cmp_ty t.  Compiling an identifier as a left-hand-side
   does not do the load, so cmp_lhs called on an Oat variable of type t returns
   and operand of type (cmp_ty t)*.  Extending these invariants to account for
   array accesses: the assignment e1[e2] = e3; treats e1[e2] as a
   left-hand-side, so we compile it as follows: compile e1 as an expression to
   obtain an array value (which is of pointer of type {i64, [0 x s]}* ).
   compile e2 as an expression to obtain an operand of type i64, generate code
   that uses getelementptr to compute the offset from the array value, which is
   a pointer to the "storage space associated with e1[e2]".

   On the other hand, compiling e1[e2] as an expression (to obtain the value of
   the array), we can simply compile e1[e2] as a left-hand-side and then do the
   load.  So cmp_exp and cmp_lhs are mutually recursive.  [[Actually, as I am
   writing this, I think it could make sense to factor the Oat grammar in this
   way, which would make things clearer, I may do that for next time around.]]

 
   Consider globals7.oat

   /--------------- globals7.oat ------------------ 
   global arr = int[] null;

   int foo() { 
     var x = new int[3]; 
     arr = x; 
     x[2] = 3; 
     return arr[2]; 
   }
   /------------------------------------------------

   The translation (given by cmp_ty) of the type int[] is {i64, [0 x i64}* so
   the corresponding LLVM IR declaration will look like:

   @arr = global { i64, [0 x i64] }* null

   This means that the type of the LLVM IR identifier @arr is {i64, [0 x i64]}**
   which is consistent with the type of a locally-declared array variable.

   The local variable x would be allocated and initialized by (something like)
   the following code snippet.  Here %_x7 is the LLVM IR uid containing the
   pointer to the "storage space" for the Oat variable x.

   %_x7 = alloca { i64, [0 x i64] }*                              ;; (1)
   %_raw_array5 = call i64*  @oat_alloc_array(i64 3)              ;; (2)
   %_array6 = bitcast i64* %_raw_array5 to { i64, [0 x i64] }*    ;; (3)
   store { i64, [0 x i64]}* %_array6, { i64, [0 x i64] }** %_x7   ;; (4)

   (1) note that alloca uses cmp_ty (int[]) to find the type, so %_x7 has 
       the same type as @arr 

   (2) @oat_alloc_array allocates len+1 i64's 

   (3) we have to bitcast the result of @oat_alloc_array so we can store it
        in %_x7 

   (4) stores the resulting array value (itself a pointer) into %_x7 

  The assignment arr = x; gets compiled to (something like):

  %_x8 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7     ;; (5)
  store {i64, [0 x i64] }* %_x8, { i64, [0 x i64] }** @arr       ;; (6)

  (5) load the array value (a pointer) that is stored in the address pointed 
      to by %_x7 

  (6) store the array value (a pointer) into @arr 

  The assignment x[2] = 3; gets compiled to (something like):

  %_x9 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7      ;; (7)
  %_index_ptr11 = getelementptr { i64, [0 x  i64] }, 
                  { i64, [0 x i64] }* %_x9, i32 0, i32 1, i32 2   ;; (8)
  store i64 3, i64* %_index_ptr11                                 ;; (9)

  (7) as above, load the array value that is stored %_x7 

  (8) calculate the offset from the array using GEP

  (9) store 3 into the array

  Finally, return arr[2]; gets compiled to (something like) the following.
  Note that the way arr is treated is identical to x.  (Once we set up the
  translation, there is no difference between Oat globals and locals, except
  how their storage space is initially allocated.)

  %_arr12 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr    ;; (10)
  %_index_ptr14 = getelementptr { i64, [0 x i64] },                
                 { i64, [0 x i64] }* %_arr12, i32 0, i32 1, i32 2  ;; (11)
  %_index15 = load i64, i64* %_index_ptr14                         ;; (12)
  ret i64 %_index15

  (10) just like for %_x9, load the array value that is stored in @arr 

  (11)  calculate the array index offset

  (12) load the array value at the index 

*)

(* Global initialized arrays:

  There is another wrinkle: To compile global initialized arrays like in the
  globals4.oat, it is helpful to do a bitcast once at the global scope to
  convert the "precise type" required by the LLVM initializer to the actual
  translation type (which sets the array length to 0).  So for globals4.oat,
  the arr global would compile to (something like):

  @arr = global { i64, [0 x i64] }* bitcast 
           ({ i64, [4 x i64] }* @_global_arr5 to { i64, [0 x i64] }* ) 
  @_global_arr5 = global { i64, [4 x i64] } 
                  { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }

*) 



(* Some useful helper functions *)

(* Generate a fresh temporary identifier. Since OAT identifiers cannot begin
   with an underscore, these should not clash with any source variables *)
let gensym : string -> string =
  let c = ref 0 in
  fun (s:string) -> incr c; Printf.sprintf "_%s%d" s (!c)

(* Amount of space an Oat type takes when stored in the satck, in bytes.  
   Note that since structured values are manipulated by reference, all
   Oat values take 8 bytes on the stack.
*)
let size_oat_ty (t : Ast.ty) = 8L

(* Generate code to allocate a zero-initialized array of source type TRef (RArray t) of the
   given size. Note "size" is an operand whose value can be computed at
   runtime *)
let oat_alloc_array (t:Ast.ty) (size:Ll.operand) : Ll.ty * operand * stream =
  let ans_id, arr_id = gensym "array", gensym "raw_array" in
  let ans_ty = cmp_ty @@ TRef (RArray t) in
  let arr_ty = Ptr I64 in
  ans_ty, Id ans_id, lift
    [ arr_id, Call(arr_ty, Gid "oat_alloc_array", [I64, size])
    ; ans_id, Bitcast(arr_ty, Id arr_id, ans_ty) ]

(* Compiles an expression exp in context c, outputting the Ll operand that will
   recieve the value of the expression, and the stream of instructions
   implementing the expression. 

   Tips:
   - use the provided cmp_ty function!

   - string literals (CStr s) should be hoisted. You'll need to make sure
     either that the resulting gid has type (Ptr I8), or, if the gid has type
     [n x i8] (where n is the length of the string), convert the gid to a 
     (Ptr I8), e.g., by using getelementptr.

   - use the provided "oat_alloc_array" function to implement literal arrays
     (CArr) and the (NewArr) expressions

*)
let cmp_bop (bop) : Ll.bop*Ll.ty = 
  match bop with 
  | Ast.Add -> Add, cmp_ty (TInt)
  | Ast.Mul -> Mul, cmp_ty (TInt)
  | Ast.Sub -> Sub, cmp_ty (TInt)
  | Ast.And -> And, cmp_ty (TBool)
  | Ast.IAnd -> And, cmp_ty (TInt) 
  | Ast.IOr -> Or, cmp_ty (TInt)
  | Ast.Or -> Or, cmp_ty (TBool)
  | Ast.Shl -> Shl, cmp_ty (TInt)
  | Ast.Shr -> Lshr, cmp_ty (TInt)
  | Ast.Sar -> Ashr, cmp_ty (TInt)

let cmp_cnd (cnd:Ast.binop) : Ll.cnd* Ll.ty = 
  match cnd with
  |Eq -> Eq, cmp_ty (TBool)
  |Neq -> Ne, cmp_ty (TBool)
  |Lt -> Slt, cmp_ty (TBool)
  |Lte -> Sle, cmp_ty (TBool)
  |Gt -> Sgt, cmp_ty (TBool)
  |Gte -> Sge, cmp_ty (TBool)


let rec cmp_exp (c:Ctxt.t) (exp:Ast.exp node) : Ll.ty * Ll.operand * stream =
  begin match exp.elt with 
  | CNull rty -> ((cmp_rty rty), Null, [])
  | CInt i -> I64, Const i, []
  | CBool b -> I1, Const (if b then 1L else 0L), []
  | CStr s -> let newID =  gensym "s" in 
                let newID1 =  gensym "s" in 
                  let ret =  gensym "tmp" in 
                    let arrayTyp = Array ( String.length s + 1, I8) in 
                      let p = Ptr(I8) in 
                        (p, Id ret, [I(ret, Load(Ptr p, Gid newID1)); G(newID1,(p, GBitcast(Ptr(arrayTyp), GGid newID, p))); G(newID,(arrayTyp, GString(s)))])
  | Bop (bop, exp1, exp2) -> let (t1, op1, s1) = cmp_exp c exp1 in 
                              let (t2, op2, s2) = cmp_exp c exp2  in
                                let id = gensym "bop" in 
                                  begin match bop with 
                                  | Add | Mul | Sub | Shl | Shr | Sar
                                  | IAnd | IOr | And | Or -> 
                                    let ll_bop, ll_ty = cmp_bop bop in
                                      ll_ty, Id id, s1 >@ s2 >:: I (id, Binop(ll_bop, t1, op1, op2)) 
                                  | Eq | Neq | Lt | Lte | Gt | Gte  -> 
                                    let ll_cnd, ll_ty = cmp_cnd bop in
                                      ll_ty, Id id, s1 >@ s2 >:: I (id, Icmp(ll_cnd, t1, op1, op2))
                                  end
  | Uop (uop, exp) -> let (t, op, s) = cmp_exp c exp in 
                        let id = gensym "uop" in 
                          begin match uop with
                          | Neg -> (t, Id id, s >:: I(id, Binop (Mul, t, op, Const (-1L))) )
                          | Lognot -> (t, Id id, s >:: I(id, Icmp (Eq, t, op, Const (0L))))
                          | Bitnot -> (t, Id id, s >:: I(id, Binop (Xor, t, op, Const (-1L))))
                          end
  | Id id -> let tmp = Ctxt.lookup id c in 
              let (Ptr ty, op) = tmp in 
                let new_id = gensym id in 
                (ty, Id new_id, [I(new_id, Load (Ptr ty, op))])
  | Call (exp1, exp_ls) -> let Id id = exp1.elt in 
                            let (ty, operand) = Ctxt.lookup_function id c in  
                              let Ptr(Fun(_, rt)) = ty in 
                                let ls = ref [] in 
                                  let s = ref [] in 
                                    let u = (for i=0 to (List.length exp_ls)-1 do 
                                      let (ty1, op1, s1) = cmp_exp c (List.nth exp_ls i) in 
                                        ls := (ty1, op1) :: (!ls);
                                        s := s1 @ (!s)
                                    done) in  
                                    let new_id = gensym "" in 
                                    (rt, Id new_id, (!s) >:: I(new_id, (Call (rt, operand, List.rev (!ls)))))
  |(NewArr (ty, exp)) ->  let (ty1, op1, s1) = cmp_exp c exp in 
    let (arr_ty, arr_op, s2) = oat_alloc_array ty op1 in 
      (arr_ty, arr_op ,s1 >@ s2)
  | (CArr (ty, exp_ls) ) -> let ls = ref [] in 
                              let s = ref [] in 
                                let len = List.length exp_ls in
                                let u1 = (for i=0 to (len-1) do 
                                  let (ty1, op1, s1) = cmp_exp c (List.nth exp_ls i) in 
                                    ls := (ty1, op1) :: (!ls);
                                    s := s1 @ (!s)
                                done) in 
                                let length = no_loc(CInt (Int64.of_int(len))) in 
                                  let (ty2, op2, s2) = cmp_exp c (no_loc(NewArr (ty, length))) in 
                                   let s3 = ref [] in 
                                    let ls_ = List.rev (!ls) in 
                                      let u2 = (for j=0 to (List.length (ls_))-1 do  
                                        let (temp_ty, temp_op) = List.nth ls_ j in 
                                          let gep_name = gensym "gep" in 
                                           let store_name = gensym "store" in 
                                            s3 := (!s3) >:: I(gep_name, Gep(ty2, op2, [Const 0L; Const 1L; Const (Int64.of_int j)])) 
                                                       >:: I(store_name, Store (temp_ty, temp_op, Id gep_name))
                                      done) in 
                                      (ty2, op2, (!s) >@ s2 >@ (!s3))
  |Index (exp1, exp2) -> let ptr_name = gensym "ptr" in
                             let resptr_name = gensym "resPtr" in 
                              let (ty1, op1, s1) =  cmp_exp c exp1 in 
                                let (ty2, op2, s2) = cmp_exp c exp2 in
                                  let Ptr(Struct [I64; Array(a,b)] ) = ty1 in 
                                  (b, Id resptr_name, (s2 @ s1) >:: I(ptr_name, Gep(ty1, op1, [Const 0L; Const 1L; op2])) >:: I(resptr_name, Load(Ptr b, Id ptr_name)))
  | _ -> (Void ,Null ,[])
end
(* Compile a statement in context c with return typ rt. Return a new context, 
   possibly extended with new local bindings, and the instruction stream
   implementing the statement.

   Left-hand-sides of assignment statements must either be OAT identifiers,
   or an index into some arbitrary expression of array type. Otherwise, the
   program is not well-formed and your compiler may throw an error.

   Tips:
   - for local variable declarations, you will need to emit Allocas in the
     entry block of the current function using the E() constructor.

   - don't forget to add a bindings to the context for local variable 
     declarations
   
   - you can avoid some work by translating For loops to the corresponding
     While loop, building the AST and recursively calling cmp_stmt

   - you might find it helpful to reuse the code you wrote for the Call
     expression to implement the SCall statement

   - compiling the left-hand-side of an assignment is almost exactly like
     compiling the Id or Index expression. Instead of loading the resulting
     pointer, you just need to store to it!

 *)
let rec cmp_stmt (c:Ctxt.t) (rt:Ll.ty) (stmt:Ast.stmt node) : Ctxt.t * stream =
  begin match stmt.elt with 
  | Ret op_exp -> begin match op_exp with 
                  | None -> (c, [T(Ret (Void, None))])
                  | Some x -> let (ty, operand, stream) = cmp_exp c x in 
                                (c, stream >:: (T(Ret (rt, Some operand))))
                  end
 | Decl (id, exp) -> let (ty, operand, stream) = cmp_exp c exp in 
                        let new_id = gensym id in 
                          let store_id = gensym "" in 
                            let decl = stream >:: E(new_id, Alloca ty) >:: I(store_id, Store (ty, operand, Id new_id)) in 
                              (Ctxt.add c id (Ptr ty, Id new_id), decl)

 | Assn (exp1, exp2) -> let (ty2, op2, s2) = cmp_exp c exp2 in 
                        begin match exp1.elt with 
                        | Id id -> let (ty, op) = Ctxt.lookup id c in 
                          (c, s2 >:: I(gensym "", Store (ty2, op2 ,op)))
                        | Index (exp3, exp4) -> let (ty3, op3, s3) = cmp_exp c exp3 in 
                                                  let (ty4, op4, s4) = cmp_exp c exp4 in 
                                                    let ptr_name = gensym "ptr" in 
                                                      (*let Ptr (Struct [I64; Array(a,b)]) = ty3 in*) 
                                                      (c, (s4 @ s3 @ s2) >:: I(ptr_name, Gep( ty3, op3, [Const 0L; Const 1L; op4])) >:: I(gensym "", Store(ty2, op2, Id ptr_name))) 
                        end 
  
  | If (exp, stmt1, stmt2) -> 
      let (ty, operand, s) = cmp_exp c exp in 
        let (cnd_name, if_name, else_name, after_name) = (gensym "cnd", gensym "if", gensym "else", gensym "after") in 
          let (body1, body2) = ((snd (cmp_block c rt stmt1)), (snd (cmp_block c rt stmt2))) in 
            let if_s = [L(if_name); T(Cbr (operand, if_name, else_name))] in 
              let else_s = [L(else_name); T(Br after_name)] in 
                let after = [L(after_name); T(Br after_name)] in 
                  (c, s >@ if_s >@ body1 >@ else_s >@ body2 >@ after) 


  | While (exp, body) -> let (ty, operand, stream) = cmp_exp c exp in
    let cnd_name, body_name, pre, post = gensym "cnd", gensym "body", gensym "pre", gensym "post" in 
      let body_s = snd (cmp_block c rt body) in 
        let preloop = [L(pre); T(Br pre)] in 
          let condition = [L(body_name); T(Cbr (Id cnd_name, post, body_name)); I(cnd_name, Icmp(Eq, I1, operand, Const 0L))] @ stream in 
              let post = [L(post); T(Br pre)] in 
                (c, (preloop >@ condition >@ body_s >@ post))

  | For (vdecls, exp, stmt, body) -> 
    let c1 = ref c in 
      let s1 = ref [] in 
        let u = 
          (for i=0 to (List.length (vdecls)-1) do
          let (c_temp, s_temp) = cmp_stmt (!c1) (Void) (no_loc (Decl (List.nth vdecls i))) in 
          c1 := c_temp;
          s1 := s_temp @ (!s1);
        done) in 
          let cond = 
            (begin match exp with 
            | Some a -> a 
            | None -> no_loc ((CInt 1L))
          end)
            in let (ctxt2, s2) = 
              begin match stmt with 
              | Some b -> cmp_stmt (!c1) rt (no_loc (While (cond, body @ [b])))
              | None -> cmp_stmt (!c1) rt (no_loc (While (cond, body)))
              end
                in (ctxt2, s2 @ (!s1)) 
  | SCall (exp1, exp2) ->let (_,_,s) = cmp_exp c (no_loc(Call (exp1, exp2))) in (c,s)
  | _ -> (c,[T (Ret (Void, None))])
end
(* Compile a series of statements *)
and cmp_block (c:Ctxt.t) (rt:Ll.ty) (stmts:Ast.block) : Ctxt.t * stream =
  List.fold_left (fun (c, code) s -> 
      let c, stmt_code = cmp_stmt c rt s in
      c, code >@ stmt_code
    ) (c,[]) stmts



(* Adds each function identifer to the context at an
   appropriately translated type.  

   NOTE: The Gid of a function is just its source name
*)
let cmp_function_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
    List.fold_left (fun c -> function
      | Ast.Gfdecl { elt={ frtyp; fname; args } } ->
         let ft = TRef (RFun (List.map fst args, frtyp)) in
         Ctxt.add c fname (cmp_ty ft, Gid fname)
      | _ -> c
    ) c p 

(* Populate a context with bindings for global variables 
   mapping OAT identifiers to LLVMlite gids and their types.

   Only a small subset of OAT expressions can be used as global initializers
   in well-formed programs. (The constructors starting with C). 
*)
let helper (exp:Ast.exp) : (Ll.ty)  = 
  match exp with 
  | CNull rty -> Ptr(cmp_rty rty)
  | CBool b -> cmp_ty TBool  
  | CInt i -> cmp_ty TInt
  | CStr s -> cmp_ty (TRef (RString))
  | CArr (ty, exp_ls) -> cmp_ty (TRef (RArray ty))
  | _ -> failwith "helper"


let cmp_global_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
  let rec loop (c:Ctxt.t) (p:Ast.prog) = 
    begin match p with 
      | [] -> c
      | x::xs -> match x with 
                | Gvdecl { elt = {name; init}} -> let exp = init.elt in 
                                       let ft = helper exp in
                                        loop (Ctxt.add c name (Ptr(ft), (Gid name))) xs
                | _ -> loop c xs 
  end in cmp_function_ctxt (loop c p) p
(* Compile a function declaration in global context c. Return the LLVMlite cfg
   and a list of global declarations containing the string literals appearing
   in the function.

   You will need to
   1. Allocate stack space for the function parameters using Alloca
   2. Store the function arguments in their corresponding alloca'd stack slot
   3. Extend the context with bindings for function variables
   4. Compile the body of the function using cmp_block
   5. Use cfg_of_stream to produce a LLVMlite cfg from 
 *)
 let rec add_args (c:Ctxt.t) (args: (ty*id) list) (ls:(uid * insn) list) : (Ctxt.t*(uid * insn ) list) = 
  begin match args with 
  | [] -> (c, ls)
  | (ty, id)::xs -> let  new_id, store_id = gensym id, gensym id in 
                      let new_ty = cmp_ty ty in 
                        let list = (ls @ [(new_id, Alloca new_ty)]) @ [(store_id, Store (new_ty, Id id, Id new_id))] in 
                          add_args (Ctxt.add c id (Ptr new_ty, Id new_id)) xs list
 end

let rec inslist (args:(ty*id) list) (ls:(uid * insn) list): (uid * insn ) list = 
  begin match args with 
  | [] -> ls 
  | (ty, id)::xs -> let new_id, store_id = gensym id, gensym id in 
                      let new_ty = cmp_ty ty in 
                        inslist xs (ls >:: (new_id, Alloca new_ty)) >:: (store_id, Store (new_ty, Id id, Id new_id))
end

let cmp_fdecl (c:Ctxt.t) (f:Ast.fdecl node) : Ll.fdecl * (Ll.gid * Ll.gdecl) list =
  let args = f.elt.args in 
    let frtyp = f.elt.frtyp in 
      let f_ty = cmp_fty ((List.map fst args), frtyp) in 
        let fname = f.elt.fname in 
          let f_param = List.map snd args in 
            let block = f.elt.body in 
              let ret_type = snd f_ty in
                let (c2, s1) = add_args c args [] in 
                  let s1 = lift s1 in 
                let s2 = snd (cmp_block c2 ret_type block) in 
                let s3 = s1 >@ s2 in 
                  let (f_cfg, ls) = cfg_of_stream(s3) in
                    ({f_ty; f_param; f_cfg}, ls)   


(* Compile a global initializer, returning the resulting LLVMlite global
   declaration, and a list of additional global declarations.

   Tips:
   - Only CNull, CBool, CInt, CStr, and CArr can appear as global initializers
     in well-formed OAT programs. Your compiler may throw an error for the other
     cases

   - OAT arrays are always handled via pointers. A global array of arrays will
     be an array of pointers to arrays emitted as additional global declarations.
*)

let rec cmp_gexp c (e:Ast.exp node) : Ll.gdecl * (Ll.gid * Ll.gdecl) list =
  begin match e.elt with 
  | CNull rty -> ((Ptr (cmp_rty rty), GNull), [])  
  | CBool b -> (((cmp_ty TBool), if b then (GInt 1L) else (GInt 0L)), [])
  | CInt i -> (((cmp_ty TInt), GInt i), [])
  | CStr s -> let str_name = gensym "str" in 
                let new_ty = Array ((String.length s) + 1, I8) in 
                   ((Ptr(I8), GBitcast (Ptr new_ty, GGid str_name, Ptr(I8))), [(str_name, (new_ty, GString s))])
  | CArr (ty, exp_ls) -> let arr_name = gensym "arr" in 
                          let new_ty = cmp_ty ty in 
                            let ls1, ls2 = ref [], ref [] in 
                                let len = List.length exp_ls in  
                                  let u = (for i=0 to (len)-1 do 
                                    let (decl, ls) = cmp_gexp c (List.nth exp_ls i) in 
                                      ls1 := (!ls1) @ [decl];
                                      ls2 := (!ls2) >@ ls;
                                  done) in 
                                  let ret_ty = Ptr(Struct[I64; Array(0, new_ty)]) in 
                                    let arr_ty = Array(len, new_ty) in 
                                      let tmp_ty = Ptr(Struct[I64; arr_ty]) in 
                                      let ptr = [(arr_name, (Struct [I64; Array(len, new_ty)], GStruct [(I64, GInt (Int64.of_int len)); (arr_ty, GArray (!ls1))]))] in 
                                       ((ret_ty, GBitcast(tmp_ty, GGid arr_name, ret_ty)), ((!ls2) @ ptr))
  | _ -> failwith "cannot appear as global initializer! (or array)"
  end
(* Oat internals function context ------------------------------------------- *)
let internals = [
    "oat_alloc_array",         Ll.Fun ([I64], Ptr I64)
  ]

(* Oat builtin function context --------------------------------------------- *)
let builtins =
  [ "array_of_string",  cmp_rty @@ RFun ([TRef RString], RetVal (TRef(RArray TInt)))
  ; "string_of_array",  cmp_rty @@ RFun ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", cmp_rty @@ RFun ([TRef RString],  RetVal TInt)
  ; "string_of_int",    cmp_rty @@ RFun ([TInt],  RetVal (TRef RString))
  ; "string_cat",       cmp_rty @@ RFun ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     cmp_rty @@ RFun ([TRef RString],  RetVoid)
  ; "print_int",        cmp_rty @@ RFun ([TInt],  RetVoid)
  ; "print_bool",       cmp_rty @@ RFun ([TBool], RetVoid)
  ]

(* Compile a OAT program to LLVMlite *)
let cmp_prog (p:Ast.prog) : Ll.prog =
  (* add built-in functions to context *)
  let init_ctxt = 
    List.fold_left (fun c (i, t) -> Ctxt.add c i (Ll.Ptr t, Gid i))
      Ctxt.empty builtins
  in
  let fc = cmp_function_ctxt init_ctxt p in

  (* build global variable context *)
  let c = cmp_global_ctxt fc p in

  (* compile functions and global variables *)
  let fdecls, gdecls = 
    List.fold_right (fun d (fs, gs) ->
        match d with
        | Ast.Gvdecl { elt=gd } -> 
           let ll_gd, gs' = cmp_gexp c gd.init in
           (fs, (gd.name, ll_gd)::gs' @ gs)
        | Ast.Gfdecl fd ->
           let fdecl, gs' = cmp_fdecl c fd in
           (fd.elt.fname,fdecl)::fs, gs' @ gs
      ) p ([], [])
  in

  (* gather external declarations *)
  let edecls = internals @ builtins in
  { tdecls = []; gdecls; fdecls; edecls }
