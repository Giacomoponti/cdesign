open Ast
open Astlib
open Tctxt

(* Error Reporting ---------------------------------------------------------- *)
(* NOTE: Use type_error to report error messages for ill-typed programs. *)

exception TypeError of string

let type_error (l : 'a node) err = 
  let (_, (s, e), _) = l.loc in
  raise (TypeError (Printf.sprintf "[%d, %d] %s" s e err))


(* initial context: G0 ------------------------------------------------------ *)
(* The Oat types of the Oat built-in functions *)
let builtins =
  [ "array_of_string",  ([TRef RString],  RetVal (TRef(RArray TInt)))
  ; "string_of_array",  ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", ([TRef RString],  RetVal TInt)
  ; "string_of_int",    ([TInt], RetVal (TRef RString))
  ; "string_cat",       ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     ([TRef RString],  RetVoid)
  ; "print_int",        ([TInt], RetVoid)
  ; "print_bool",       ([TBool], RetVoid)
  ]

(* binary operation types --------------------------------------------------- *)
let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)
  | Eq | Neq -> failwith "typ_of_binop called on polymorphic == or !="

(* unary operation types ---------------------------------------------------- *)
let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)
(* convert ty to string  ---------------------------------------------------- *)
let rec type_to_string (ty:Ast.ty) : string = 
  begin match ty with 
  | TInt -> "int"
  | TBool -> "bool"
  | _ -> ""
end
(* subtyping ---------------------------------------------------------------- *)
(* Decides whether H |- t1 <: t2 
    - assumes that H contains the declarations of all the possible struct types

    - you will want to introduce addition (possibly mutually recursive) 
      helper functions to implement the different judgments of the subtyping
      relation. We have included a template for subtype_ref to get you started.
      (Don't forget about OCaml's 'and' keyword.)
*)
let rec subtype (c : Tctxt.t) (t1 : Ast.ty) (t2 : Ast.ty) : bool =
  match t1, t2 with
   | TInt, TInt -> true 
   | TBool, TBool -> true 
   | TNullRef rty1, TNullRef rty2 -> subtype_ref c rty1 rty2 
   | TRef rty1, TRef rty2 -> subtype_ref c (rty1) (rty2) 
   | TRef rty1, TNullRef rty2 -> subtype_ref c (rty1) (rty2) 
   | _, _ -> false      
(* Decides whether H |-r ref1 <: ref2 *)
and subtype_ref (c : Tctxt.t) (t1 : Ast.rty) (t2 : Ast.rty) : bool =
  match t1, t2 with 
  | RString, RString -> true 
  | RArray ty1, RArray ty2 -> (ty1 = ty2) 
  | RStruct id1, RStruct id2 -> 
    begin match (lookup_struct_option id1 c), (lookup_struct_option id2 c) with  
    | Some s1, Some s2 -> 
      let rec helper ls1 ls2 = begin match ls1, ls2 with 
                                    | _, [] -> true
                                    | (x::xs), (y::ys) -> if (x == y) then helper xs ys else false 
                                    | [], (y::ys) -> false 
                                    end 
                                  in helper (s1) (s2)                        
    | _, _ -> false
    end 
  | RFun (ty_ls1, ret_ty1), RFun (ty_ls2, ret_ty2)  -> 
      if (subtype_ret c ret_ty1 ret_ty2) then 
        let rec helper_fun ls1 ls2 = 
          (if (List.length ls1 != List.length ls2) then false 
          else 
             begin match ls1, ls2 with 
              | [], [] -> true 
              | (x::xs), (y::ys) -> if (subtype c x y) then helper_fun xs ys else false    
              end )
          in helper_fun ty_ls2 ty_ls1 
      else false      
  | _, _ -> false 
    
and subtype_ret (c : Tctxt.t) (t1 : Ast.ret_ty) (t2 : Ast.ret_ty) : bool = 
  match t1, t2 with 
  | RetVoid, RetVoid -> true
  | RetVal ty1, RetVal ty2 -> subtype c ty1 ty2
  | _, _ -> false    

(* well-formed types -------------------------------------------------------- *)
(* Implement a (set of) functions that check that types are well formed according
   to the H |- t and related inference rules

    - the function should succeed by returning () if the type is well-formed
      according to the rules

    - the function should fail using the "type_error" helper function if the 
      type is not well-formed

    - l is just an ast node that provides source location information for
      generating error messages (it's only needed for the type_error generation)

    - tc contains the structure definition context
 *)
let rec typecheck_ty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ty) : unit = 
  match t with 
  | TInt -> () 
  | TBool -> () 
  | TRef rty -> typecheck_ref l tc rty
  | TNullRef rty -> typecheck_ref l tc rty 
  | _ -> type_error l "wrong type"

and typecheck_ref (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.rty) : unit =
  match t with 
  | RString -> ()
  | RArray ty1 -> typecheck_ty l tc ty1 
  | RStruct id -> begin match lookup_struct_option id tc with 
                  | None -> type_error l "wrong type" 
                  | Some s -> ()
                  end
  | RFun (ty_ls, ret_ty) ->  List.map (typecheck_ty l tc) ty_ls; 
                              typecheck_ret l tc ret_ty;           
and typecheck_ret (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ret_ty) : unit = 
  match t with 
  | RetVoid -> () 
  | RetVal ty ->  typecheck_ty l tc ty
  | _ -> type_error l "type_error"

(* typechecking expressions ------------------------------------------------- *)
(* Typechecks an expression in the typing context c, returns the type of the
   expression.  This function should implement the inference rules given in the
   oad.pdf specification.  There, they are written:

       H; G; L |- exp : t

   See tctxt.ml for the implementation of the context c, which represents the
   four typing contexts: H - for structure definitions G - for global
   identifiers L - for local identifiers

   Returns the (most precise) type for the expression, if it is type correct
   according to the inference rules.

   Uses the type_error function to indicate a (useful!) error message if the
   expression is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   Notes: - Structure values permit the programmer to write the fields in any
   order (compared with the structure definition).  This means that, given the
   declaration struct T { a:int; b:int; c:int } The expression new T {b=3; c=4;
   a=1} is well typed.  (You should sort the fields to compare them.)

*)

let rec check_dups fs =
  match fs with
  | [] -> false
  | h :: t -> (List.exists (fun x -> x.fieldName = h.fieldName) t) || check_dups t

let typecheck_tdecl (tc : Tctxt.t) id fs  (l : 'a Ast.node) : unit =
  if check_dups fs
  then type_error l ("Repeated fields in " ^ id) 
  else List.iter (fun f -> typecheck_ty l tc f.ftyp) fs


let rec typecheck_exp (c : Tctxt.t) (e : Ast.exp node) : Ast.ty = 
  match e.elt with 
  | CBool b -> TBool 
  | CInt i -> TInt 
  | CStr s -> TRef (RString)
  | CNull rty -> (typecheck_ref e c (rty)); (TNullRef rty)
  | Id id -> begin match lookup_option id c with 
              | Some s -> s 
              | None -> type_error e "duplicate local id"  
              end
              
  | CArr (ty, exp_ls) -> typecheck_ty e c ty;
                            let len = List.length exp_ls in 
                              let check2 = (for i=0 to len-1 do 
                                let ty_i = typecheck_exp c (List.nth exp_ls i) in 
                                  if (subtype c ty_i ty = false) then (type_error e "wrong type");  
                                  done ) in TRef (RArray ty)
  | NewArr (ty, expn1, id, expn2) -> let check1 = (typecheck_ty expn1 c ty) in
                                      let check2 = (if (typecheck_exp c expn1 != TInt) then type_error expn1 "wrong type") in 
                                        let check3 = (if (lookup_local_option id c != None) then type_error expn2 ("duplicate id: " ^ id)) in 
                                          let ty2 = typecheck_exp (Tctxt.add_local c id (TInt)) expn2 in
                                            if (subtype (Tctxt.add_local c id (TInt)) ty2 ty) then 
                                              TRef (RArray ty) 
                                            else 
                                              type_error expn1 "wrong type"
  | CStruct (id, cfields) -> begin match (lookup_struct_option id c) with  
                             | None -> type_error e "struct not in ctxt" 
                             | Some fields ->  if (List.length cfields = List.length fields) then 
                                                (*let exp_ls = List.map snd cfields in 
                                                  let ty1_ls = List.map (typecheck_exp c) exp_ls in*)
                                                  let fslist = List.map (fun x -> {fieldName = fst(x); ftyp = (typecheck_exp c (snd(x)))}) cfields in 
                                                    typecheck_tdecl c id fslist e;  
                                                    typecheck_fields c id cfields;  
                                               else type_error e "different size" 
                            end
  | Proj (expn, id) -> begin match typecheck_exp c expn with 
                      | TRef (RStruct name) | TNullRef (RStruct name) ->
                        begin match lookup_struct_option name c with 
                        | None -> type_error expn "struct not in context"
                        | Some s -> begin match lookup_field_option name id c with 
                                    | None -> type_error expn "field not in context" 
                                    | Some a -> a
                                    end 
                        end
                      | _ -> type_error expn "not struct" 
                      end                               
  | Index (expn1, expn2) -> begin match (typecheck_exp c expn1), (typecheck_exp c expn1) with 
                            | TRef (RArray ty), TInt -> ty
                            | _, _ -> type_error expn1 "wrong type" 
                            end
  | Length expn ->  begin match (typecheck_exp c expn) with 
                    | TRef (RArray _) -> TInt
                    | _ -> type_error expn "wrong type" 
                    end  
  | Call (expn1, expn_ls) ->  begin match typecheck_exp c expn1 with 
                              | TRef (RFun (t_ls, RetVal ret_t)) -> let t1_ls = (List.map (typecheck_exp c) expn_ls) in 
                                                              let length = List.length t_ls in 
                                                                let check = (for i=0 to length-1 do 
                                                                  if (subtype c (List.nth t1_ls i) (List.nth t_ls i) == false) then type_error (List.nth expn_ls i) "wropng type"
                                                                  done) in 
                                                                  (ret_t) 

                              | _ -> type_error expn1 "wrong function" 
                              end                   
  | Bop (Eq, expn1, expn2) -> let ty1 = typecheck_exp c expn1 in 
                                let ty2 = typecheck_exp c expn2 in 
                                  if ((subtype c ty1 ty2) && (subtype c ty2 ty1))  then TBool 
                                  else type_error expn1 "wrong type"
  | Bop (Neq, expn1, expn2) -> let ty1 = typecheck_exp c expn1 in 
                                let ty2 = typecheck_exp c expn2 in 
                                  if ((subtype c ty1 ty2) && (subtype c ty2 ty1))  then TBool 
                                  else type_error expn1 "wrong type" 
  | Bop (bop, expn1, expn2) -> print_string ("inside bop");
                                begin match typ_of_binop bop with 
                                | (x, y, z)  -> 
                                  let ty1 = typecheck_exp c expn1 in 
                                    let ty2 = typecheck_exp c expn2 in 
                                      let print = print_string ("bop") in 
                                      if (x = ty1) then 
                                        if (y = ty2) then z else type_error expn1 "wrong type"
                                      else type_error expn1 "wrong type"
                                | _ -> type_error expn1 "wrong type"
  end                               
  | Uop (unop, expn) -> begin match typ_of_unop unop with 
                        |(x, y) -> if (typecheck_exp c expn) = x then y  
                                                        else type_error expn "wrong type"
                        | _ -> type_error expn "wrong type"                                
                        end                                                         
  | _ -> type_error e "wrong type" 
  and typecheck_fields (c:Tctxt.t) (id:id) (fields: (id*exp node) list) : Ast.ty = 
        begin match fields with 
        | [] -> TRef(RStruct id)
        | x::xs -> begin match (lookup_field_option id (fst x) c) with 
                    | None -> type_error (snd x) "field not in context"
                    | Some ty -> if (subtype c (typecheck_exp c (snd x)) (ty)) then typecheck_fields c id xs 
                                 else type_error (snd x) "not subtype"
                    end
        end              
(* statements --------------------------------------------------------------- *)

(* Typecheck a statement 
   This function should implement the statement typechecking rules from oat.pdf.  

   Inputs:
    - tc: the type context
    - s: the statement node
    - to_ret: the desired return type (from the function declaration)

   Returns:
     - the new type context (which includes newly declared variables in scope
       after this statement
     - A boolean indicating the return behavior of a statement:
        false:  might not return
        true: definitely returns 

        in the branching statements, both branches must definitely return

        Intuitively: if one of the two branches of a conditional does not 
        contain a return statement, then the entier conditional statement might 
        not return.
  
        looping constructs never definitely return 

   Uses the type_error function to indicate a (useful!) error message if the
   statement is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   - You will probably find it convenient to add a helper function that implements the 
     block typecheck rules.
*)


let rec typecheck_stmt (tc : Tctxt.t) (s:Ast.stmt node) (to_ret:ret_ty) : Tctxt.t * bool =
  begin match s.elt with
  | Assn (expn1, expn2) ->  begin match typecheck_exp tc expn1 with 
                            | TRef(RFun(ty_ls, ret_ty)) -> begin match lookup_local_option (let Id id = expn1.elt in id) tc with 
                                                            | Some _ -> type_error expn1 ""
                                                            | None ->  if (subtype tc (typecheck_exp tc expn2) (typecheck_exp tc expn1)) then (tc, false) 
                                                                        else type_error expn1 "not subtype" 
                                                            end 
                            | _ -> if (subtype tc (typecheck_exp tc expn2) (typecheck_exp tc expn1)) then (tc, false) 
                                   else type_error expn1 "not subtype"
                            end
  | Decl vdecl -> (typecheck_vdecl tc vdecl, false)
  | SCall (expn, expn_ls) -> let fun_ty = typecheck_exp tc expn in
                              begin match fun_ty with 
                              | TRef (RFun (ty_ls, RetVoid)) -> let ty1_ls = List.map (typecheck_exp tc) expn_ls in 
                                                                let u = (for i=0 to (List.length ty_ls)-1 do 
                                                                        if (subtype tc (List.nth ty1_ls i) (List.nth ty_ls i) == false) 
                                                                          then type_error (List.nth expn_ls i) "not subtype" done) in 
                                                                        (tc, false)
                              | _ -> type_error expn "wrong ret_ty"
                              end 
  | If (expn, block1, block2) -> begin match typecheck_exp tc expn with 
                                    | TBool -> let r1 = typecheck_block tc to_ret block1 false in 
                                                let r2 = typecheck_block tc to_ret block2 false in
                                                  tc, (r1 && r2) 
                                    | _ -> type_error expn "condition isnt bool"
                                    end     
  | While (expn, block) -> begin match typecheck_exp tc expn with 
                            | TBool -> let r = typecheck_block tc to_ret block false in (tc, false)
                            | _ -> type_error expn "condition isnt bool" 
                            end 
  | For (vdecls, expn_opt, stmt_opt, block) -> let c2 = typecheck_vdecls tc vdecls in
                                                begin match expn_opt, stmt_opt with 
                                                | Some expn, Some stmt ->   
                                                  begin match typecheck_exp c2 expn with 
                                                    | TBool -> let (c3, ret) = typecheck_stmt c2 stmt to_ret in 
                                                                let check = if (ret != false) then type_error stmt "wrong returns" in 
                                                                  typecheck_block c2 to_ret block false;
                                                                  (tc, false) 
                                                    | _ -> type_error expn "condition isnt bool"
                                                    end 
                                                | None, Some stmt -> let (c3, ret) = typecheck_stmt c2 stmt to_ret in 
                                                                      let check = if (ret != false) then type_error stmt "wrong returns" in 
                                                                        typecheck_block c2 to_ret block false;
                                                                        (tc, false)  
                                                | Some expn, None -> 
                                                  begin match typecheck_exp c2 expn with 
                                                    | TBool -> typecheck_block c2 to_ret block false; (tc, false) 
                                                    | _ -> type_error expn "condition isnt bool"
                                                    end
                                                | None, None -> typecheck_block c2 to_ret block false; (tc, false)                        
                                                end                                                                                   
  | Ret expn_opt -> begin match expn_opt, to_ret with 
                    | Some expn, RetVal ty -> let ret_ty = typecheck_exp tc expn in 
                                            if (subtype tc ret_ty ty) then (tc, true)
                                            else type_error expn "wropnt ret_ty" 
                    | None, RetVoid -> (tc, true)
                    | Some expn, RetVoid -> type_error expn "wrong return void"
                    | None, RetVal ty -> type_error s "wrong return void"
                    end
  | Cast(r, id, expn, block1, block2) -> begin match (typecheck_exp tc expn) with
                                          | TNullRef a ->  if (subtype tc (TRef a) (TRef r)) then (tc, (typecheck_block (add_local tc id (TRef r)) to_ret block1 false) && (typecheck_block (tc) to_ret block2 false)) else type_error expn "CASTtype_error" 
                                          | _ -> type_error expn "CASTtype_error" 
                                        end
  end
and typecheck_vdecl (tc : Tctxt.t) (vdecl: Ast.vdecl) : Tctxt.t = 
  let id = fst vdecl in 
    let expn = snd vdecl in 
      if (lookup_local_option id tc != None) then 
        let ty = (typecheck_exp tc expn) in
          Tctxt.add_local tc id ty 
      else type_error expn "duplicate var decl"
  and typecheck_vdecls (tc : Tctxt.t) (vdecls: Ast.vdecl list) : Tctxt.t = 
    begin match vdecls with 
    | [] -> tc
    | x::xs -> typecheck_vdecls (typecheck_vdecl tc x) xs 
    end      
 and typecheck_block (tc : Tctxt.t) (rt) (block: stmt node list) (r:bool): (bool) =
    if (List.length block = 0) then false 
    else 
      begin match block with 
      | [] -> r
      | x::xs -> let temp = typecheck_stmt tc x rt in 
                  typecheck_block tc rt xs (snd temp)  
      end 
(* struct type declarations ------------------------------------------------- *)
(* Here is an example of how to implement the TYP_TDECLOK rule, which is 
   is needed elswhere in the type system.
 *)

(* Helper function to look for duplicate field names *)
(*let rec check_dups fs =
  match fs with
  | [] -> false
  | h :: t -> (List.exists (fun x -> x.fieldName = h.fieldName) t) || check_dups t

let typecheck_tdecl (tc : Tctxt.t) id fs  (l : 'a Ast.node) : unit =
  if check_dups fs
  then type_error l ("Repeated fields in " ^ id) 
  else List.iter (fun f -> typecheck_ty l tc f.ftyp) fs*)

(* function declarations ---------------------------------------------------- *)
(* typecheck a function declaration 
    - extends the local context with the types of the formal parameters to the 
      function
    - typechecks the body of the function (passing in the expected return type
    - checks that the function actually returns
*)
let rec check_dups_args args = 
  begin match args with 
   | [] -> false 
   | h::t -> (List.exists (fun x -> (snd x) = (snd h)) t) || check_dups_args t
end
let typecheck_fdecl (tc : Tctxt.t) (f : Ast.fdecl) (l : 'a Ast.node) : unit =
  let args = f.args in 
  if check_dups_args args then type_error l ("Repeated fields in " ^ f.fname) 
  else List.iter (fun arg -> typecheck_ty l tc (fst arg)) args

(* creating the typchecking context ----------------------------------------- *)

(* The following functions correspond to the
   judgments that create the global typechecking context.

   create_struct_ctxt: - adds all the struct types to the struct 'H'
   context (checking to see that there are no duplicate fields

     H |-s prog ==> H'


   create_function_ctxt: - adds the the function identifiers and their
   types to the 'G' context (ensuring that there are no redeclared
   function identifiers)

     H ; G1 |-f prog ==> G2


   create_global_ctxt: - typechecks the global initializers and adds
   their identifiers to the 'G' global context

     H ; G1 |-g prog ==> G2    


   NOTE: global initializers may mention function identifiers as
   constants, but can't mention other global values *)
let func_ty (f:fdecl node) (tc:Tctxt.t): (Ast.ty) = 
  let arg_ls = List.map fst f.elt.args in
    let check1 = (typecheck_ret f tc f.elt.frtyp) in 
      let check2 = typecheck_fdecl tc f.elt f in  
      TRef(RFun (arg_ls, f.elt.frtyp))

let create_struct_ctxt (p:Ast.prog) : Tctxt.t =
  let empty = Tctxt.empty in  
    let rec loop ctxt prog = 
    (begin match prog with 
    | [] -> ctxt
    | (Gvdecl _)::xs | (Gfdecl _)::xs -> loop ctxt xs
    | (Gtdecl x)::xs -> begin match lookup_struct_option (fst x.elt) ctxt with 
                        | None -> loop (Tctxt.add_struct ctxt (fst x.elt) (snd x.elt)) xs
                        | Some _ -> type_error x "struct already in ctxt" 
                        end
    end ) in let new_ctxt = loop empty p in 
    let tdecl_list_node = List.filter (fun a -> match a with
                                        |Gvdecl _ | Gfdecl _ -> false
                                        |Gtdecl _ -> true) p in
    let  tdecl_list = List.map (fun a -> let Gtdecl x = a in x.elt) tdecl_list_node in
    List.map (fun x -> typecheck_tdecl new_ctxt (fst x) (snd x) (no_loc (Id "lol"))) tdecl_list;
    new_ctxt

(*let rec args_to_fs (args : (ty*id) list) (l : field list) : (field list) = 
  match args with 
    | [] -> List.rev l
    | (x::xs) -> args_to_fs xs ({fieldName = snd(x); ftyp = fst(x)} :: l)
let rec add_builtins (tc:Tctxt.t) (l : (Ast.id * fty) list) : Tctxt.t  = 
 match l with
  | [] -> tc
  | (x :: xs) -> (add_builtins (add_global tc (fst x) (TRef(RFun((fst (snd x) ), snd(snd x))))) xs)
*)
let create_function_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  let rec loop ctxt prog = 
    (begin match prog with 
    | [] -> ctxt
    | (Gvdecl _)::xs | (Gtdecl _)::xs -> loop ctxt xs
    | (Gfdecl f)::xs -> begin match lookup_global_option f.elt.fname ctxt with 
                        | None -> let f_ty = func_ty f tc in 
                                    loop (Tctxt.add_global ctxt (f.elt.fname) (f_ty)) xs 
                        | Some _ -> type_error f "function already in ctxt"
                        end
    end ) in loop tc p 
    (*let fdecl_list_node = List.filter (fun a -> match a with
                                        |Gvdecl _ | Gtdecl _ -> false
                                        |Gfdecl _ -> true) p in
                                       
                                        
  let  fdecl_list = List.map (fun a -> let Gfdecl x = a in x.elt) fdecl_list_node in
   
 
 let newCtxt = List.fold_left  (fun c a -> begin match (lookup_global_option (a.fname) c) with
                                           | Some s -> type_error (no_loc (Id "lol")) "CREATEFUNCTIONtype_error"
                                           | None ->  ((add_global c (a.fname) (TRef(RFun((List.map fst (a.args) ), a.frtyp)))) )
                                           end) tc fdecl_list in 

 
 List.map (fun a ->  typecheck_tdecl newCtxt (a.fname) (args_to_fs (a.args) []) (no_loc (Id "lol"))) fdecl_list;
 
 
let resCtxt = (add_builtins newCtxt builtins) in resCtxt
*)
let create_global_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
 (** let rec loop ctxt prog = 
    (begin match prog with 
    | [] -> ctxt
    | (Gfdecl _)::xs | (Gtdecl _)::xs -> loop ctxt xs
    | (Gvdecl g)::xs -> begin match lookup_global_option g.elt.name ctxt with 
                              | None -> let g_ty = typecheck_exp ctxt g.elt.init in 
                                          loop (Tctxt.add_global ctxt (g.elt.name) (g_ty)) xs  
                              | Some _ -> type_error g "global already in ctxt" 
                              end 
    end ) in 
    loop tc p*)
    

 
 let gdecl_list_node = List.filter (fun a -> match a with
 |Gfdecl _ | Gtdecl _ -> false
 |Gvdecl _ -> true) p in
let  gdecl_list = List.map (fun a -> let Gvdecl x = a in x.elt) gdecl_list_node in


let newCtxt = List.fold_left (fun c a -> begin match (lookup_global_option (a.name) c) with
    | Some s -> type_error (no_loc (Id "lol")) "CREATEGLOBALtype_error"
    | None ->  (add_global c (a.name) (typecheck_exp tc (a.init)) )
    end) tc  gdecl_list in 

newCtxt
(* This function implements the |- prog and the H ; G |- prog 
   rules of the oat.pdf specification.   
*)
let typecheck_program (p:Ast.prog) : unit =
  let sc = create_struct_ctxt p in
  let fc = create_function_ctxt sc p in
  let tc = create_global_ctxt fc p in
  List.iter (fun p ->
    match p with
    | Gfdecl ({elt=f} as l) -> typecheck_fdecl tc f l
    | Gtdecl ({elt=(id, fs)} as l) -> typecheck_tdecl tc id fs l 
    | _ -> ()) p
