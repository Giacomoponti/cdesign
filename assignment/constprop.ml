open Ll
open Datastructures

(* The lattice of symbolic constants ---------------------------------------- *)
module SymConst =
  struct
    type t = NonConst           (* Uid may take on multiple values at runtime *)
           | Const of int64     (* Uid will always evaluate to const i64 or i1 *)
           | UndefConst         (* Uid is not defined at the point *)

    let compare s t =
      match (s, t) with
      | (Const i, Const j) -> Int64.compare i j
      | (NonConst, NonConst) | (UndefConst, UndefConst) -> 0
      | (NonConst, _) | (_, UndefConst) -> 1
      | (UndefConst, _) | (_, NonConst) -> -1

    let to_string : t -> string = function
      | NonConst -> "NonConst"
      | Const i -> Printf.sprintf "Const (%LdL)" i
      | UndefConst -> "UndefConst"

    
  end

(* The analysis computes, at each program point, which UIDs in scope will evaluate 
   to integer constants *)
type fact = SymConst.t UidM.t



(* flow function across Ll instructions ------------------------------------- *)
(* - Uid of a binop or icmp with const arguments is constant-out
   - Uid of a binop or icmp with an UndefConst argument is UndefConst-out
   - Uid of a binop or icmp with an NonConst argument is NonConst-out
   - Uid of stores and void calls are UndefConst-out
   - Uid of all other instructions are NonConst-out
 *)
 let res_of_bop (bop:Ll.bop) (a:int64) (b:int64) = 
  begin match bop with 
  |Add -> Int64.add a b
  |Sub -> Int64.sub a b
  |Mul -> Int64.mul a b 
  |Shl -> Int64.shift_left a (Int64.to_int b) 
  |Lshr -> Int64.shift_right_logical a (Int64.to_int b) 
  |Ashr -> Int64.shift_right a (Int64.to_int b) 
  |And -> Int64.logand a b
  |Or -> Int64.logor a b
  |Xor -> Int64.logxor a b
 end
 
 let res_of_cond (cnd:Ll.cnd) (a:int64) (b:int64) = 
  begin match cnd with
  |Eq -> if (a = b) then 1L else 0L
  |Ne ->if (a = b) then 0L else 1L
  |Slt -> if (a < b) then 1L else 0L
  |Sle -> if (a <= b) then 1L else 0L
  |Sgt -> if (a > b) then 1L else 0L
  |Sge -> if (a >= b) then 1L else 0L
 end 

let insn_flow (u,i:uid * insn) (d:fact) : fact =
  begin match i with 
  | Binop (bop, ty, op1, op2) -> begin match op1, op2 with 
                                | Const a, Const b -> UidM.add u (SymConst.Const(res_of_bop bop a b)) d
                                | Id id, b | b, Id id -> begin match (try (UidM.find id d) with Not_found -> SymConst.NonConst) with 
                                                          |SymConst.NonConst -> ( UidM.add u SymConst.NonConst d)
                                                          |SymConst.UndefConst -> (UidM.add u SymConst.UndefConst d)
                                                          |SymConst.Const a ->  begin match b with
                                                                                | Id s -> begin match (try (UidM.find s d) with Not_found -> SymConst.NonConst) with
                                                                                          |SymConst.Const e -> let res = (if (op2 = Id id) then res_of_bop bop e a else res_of_bop bop a e) in (UidM.add u (SymConst.Const(res)) d)
                                                                                          |SymConst.NonConst -> (UidM.add u SymConst.NonConst d)
                                                                                          |SymConst.UndefConst -> (UidM.add u SymConst.UndefConst d)
                                                                                          | _ -> d
                                                                                          end
                                                                                | Const s -> let res = (if (op2 = Id id) then res_of_bop bop s a else res_of_bop bop a s) in (UidM.add u (SymConst.Const(res)) d) 
                                                                                | _ -> (UidM.add u SymConst.NonConst d)
                                                                                end
                                                          | _ -> d                               
                                                        end
                                end
  | Icmp (cnd, ty, op1, op2) -> begin match op1, op2 with 
                                | Const a, Const b -> (UidM.add u (SymConst.Const (res_of_cond cnd a b )) d)
                                | Id id, b | b, Id id -> begin match (try (UidM.find id d) with Not_found -> SymConst.NonConst) with
                                                          |SymConst.NonConst -> (UidM.add u SymConst.NonConst d)
                                                          |SymConst.UndefConst -> (UidM.add u SymConst.UndefConst d)
                                                          |SymConst.Const a -> begin match b with
                                                                                | Id s -> begin match (try (UidM.find s d) with Not_found -> SymConst.NonConst) with
                                                                                          |SymConst.Const e -> let res = (if (op2 = Id id) then res_of_cond cnd e a else res_of_cond cnd a e) in (UidM.add u (SymConst.Const(res)) d)
                                                                                          |SymConst.NonConst -> (UidM.add u SymConst.NonConst d)
                                                                                          |SymConst.UndefConst -> (UidM.add u SymConst.UndefConst d)
                                                                                          | _ -> d
                                                                                          end
                                                                                | Const s ->  let res = (if (op2 = Id id) then res_of_cond cnd s a else res_of_cond cnd a s) in (UidM.add u (SymConst.Const(res)) d) 
                                                                                | _ -> (UidM.add u SymConst.NonConst d)
                                                                                end 
                                                           | _ -> d                             
                                                        end
                                end  
  |Store (_, _, _) -> UidM.add u SymConst.UndefConst d
  |Call(Void, _, _) -> UidM.add u SymConst.UndefConst d
  |_ -> UidM.add u SymConst.NonConst d
  end 

(* The flow function across terminators is trivial: they never change const info *)
let terminator_flow (t:terminator) (d:fact) : fact = d

(* module for instantiating the generic framework --------------------------- *)
module Fact =
  struct
    type t = fact
    let forwards = true

    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    let normalize : fact -> fact = 
      UidM.filter (fun _ v -> v != SymConst.UndefConst)

    let compare (d:fact) (e:fact) : int  = 
      UidM.compare SymConst.compare (normalize d) (normalize e)

    let to_string : fact -> string =
      UidM.to_string (fun _ v -> SymConst.to_string v)

    (* The constprop analysis should take the meet over predecessors to compute the
       flow into a node. You may find the UidM.merge function useful *)
    let combine (ds:fact list) : fact = 
      let empty_ref = ref UidM.empty in 
        let helper x y = (begin match x, y with 
                          |(SymConst.Const a, SymConst.Const b) -> if (a = b) then Some (SymConst.Const a) else Some (SymConst.NonConst)
                          |(SymConst.Const _, SymConst.NonConst) |(SymConst.NonConst, SymConst.Const _) |(SymConst.NonConst, SymConst.NonConst) -> Some SymConst.NonConst
                          | _ -> Some SymConst.UndefConst
                          end) in 
        let u = (for i=0 to (List.length ds)-1 do  
            empty_ref := ((UidM.union (fun key x y -> helper x y)) (!empty_ref) (List.nth ds i))
        done) in (!empty_ref)
  end

(* instantiate the general framework ---------------------------------------- *)
module Graph = Cfg.AsGraph (Fact)
module Solver = Solver.Make (Fact) (Graph)

(* expose a top-level analysis operation ------------------------------------ *)
let analyze (g:Cfg.t) : Graph.t =
  (* the analysis starts with every node set to bottom (the map of every uid 
     in the function to UndefConst *)
  let init l = UidM.empty in

  (* the flow into the entry node should indicate that any parameter to the
     function is not a constant *)
  let cp_in = List.fold_right 
    (fun (u,_) -> UidM.add u SymConst.NonConst)
    g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init cp_in g in
  Solver.solve fg


(* run constant propagation on a cfg given analysis results ----------------- *)
(* HINT: your cp_block implementation will probably rely on several helper 
   functions. *)
let cons_term uid t cb : (uid*Ll.terminator) = 
let out_fact = cb uid in 
  begin match t with 
  | Ret (ty, Some (Id id)) -> begin match (try(UidM.find id out_fact) with Not_found -> SymConst.NonConst) with 
                              |SymConst.Const c -> (uid,Ret(ty, Some (Const c))) 
                              |_ -> (uid, t)
                              end 
  | Cbr (Id id, lbl_1, lbl_2) -> begin match (try(UidM.find id out_fact) with Not_found -> SymConst.NonConst)with 
                                |SymConst.Const c ->(uid, Cbr(Const c, lbl_1, lbl_2))
                                |_ -> (uid, t)
                                end 
  | _ -> (uid, t)           
  end
  
let cons_ins uid t cb (id,insn) : (uid*Ll.insn) = 
  let out_fact = cb id in 
    let insn_ = 
      (begin match insn with 
      |Binop (bop, ty, op1, op2) ->  
          begin match op1 with
          |Id id1 -> begin match (try(UidM.find id1 out_fact) with Not_found -> SymConst.NonConst) with
                      |SymConst.Const d -> begin match op2 with
                                            |Id id2 -> begin match (try(UidM.find id2 out_fact) with Not_found -> SymConst.NonConst) with
                                                      |SymConst.Const f -> Binop(bop, ty, Const d, Const f)
                                                      |_ -> Binop(bop, ty, Const d, Id id2)
                                                    end
                                            |x -> Binop(bop, ty, Const d, x)
                                            end
                      |_ -> begin match op2 with 
                            |Id id2 -> begin match (try(UidM.find id2 out_fact) with Not_found -> SymConst.NonConst) with
                                        |SymConst.Const f -> Binop(bop, ty, Id id1, Const f)
                                        |_ -> Binop(bop, ty, Id id1, Id id2)
                                        end
                            |x -> Binop(bop, ty, op1, x)
                          end         
                      end                  
          |y -> begin match op2 with 
                |Id id -> begin match (try(UidM.find id out_fact) with Not_found -> SymConst.NonConst) with
                          |SymConst.Const f -> Binop(bop, ty, y, Const f)
                          |_ -> Binop(bop, ty, y, Id id)
                          end
                |x -> Binop(bop, ty, y, x)
                end
          end 
      |Store(ty, Id id, op2) -> 
        begin match (try(UidM.find id out_fact) with Not_found ->SymConst.NonConst) with 
          |SymConst.Const c -> Store(ty, Const c, op2)  
          |_ -> insn
        end
      |Call(ty, op, tylist) -> Call(ty, op, 
        List.map(fun (ty, op1) -> begin match op1 with
                                  |Id c -> begin match (try(UidM.find c out_fact) with Not_found -> SymConst.NonConst) with
                                      |SymConst.Const f -> (ty, Const f)
                                      |_ -> (ty, op1)
                                      end
                                  | _ -> (ty,op1)
                                  end) tylist) 
      |Bitcast(ty1, Id id, ty2) -> 
        begin match (try(UidM.find id out_fact) with Not_found -> SymConst.NonConst) with 
          |SymConst.Const c -> Bitcast(ty1, Const c, ty2)  
          |_ -> insn
        end                            
      |Icmp(cnd, ty, op1, op2) -> begin match op1 with
                                  |Id id1 -> begin match (try(UidM.find id1 out_fact) with Not_found -> SymConst.NonConst ) with
                                            |SymConst.Const d -> begin match op2 with
                                                                  |Id id2 -> begin match (try(UidM.find id2 out_fact) with Not_found -> SymConst.NonConst) with
                                                                            |SymConst.Const f -> Icmp(cnd, ty, Const d, Const f)
                                                                            |_ -> Icmp(cnd, ty, Const d, Id id2)
                                                                          end
                                                                  |x -> Icmp(cnd, ty, Const d, x)
                                                                
                                                                end
                                            |_ -> begin match op2 with 
                                                    |Id id2 -> begin match (try(UidM.find id2 out_fact) with Not_found -> SymConst.NonConst)with
                                                              |SymConst.Const f -> Icmp(cnd, ty, Id id1, Const f)
                                                              |_ -> Icmp(cnd, ty, Id id1, Id id2)
                                                            end
                                                    |x -> Icmp(cnd, ty, op1, x)
                                                    end         
                                            end                  
                                  |y -> begin match op2 with 
                                        |Id id2 -> begin match (try(UidM.find id2 out_fact) with Not_found ->SymConst.NonConst) with
                                                  |SymConst.Const f -> Icmp(cnd, ty, y, Const f)
                                                  |_ -> Icmp(cnd, ty, y, Id id2)
                                                  end
                                        |x -> Icmp(cnd, ty, y, x)
                                        end
                                              
                                  end
      |_ -> insn                           
      end) in (id, insn_)


let cons_block (cb:uid -> Fact.t) (b:Ll.block) : Ll.block = 
let ins_ls = b.insns in 
  let (uid, t) = b.term in
  let insns = List.map (cons_ins uid t cb) ins_ls in 
    let term = cons_term uid t cb in 
    {insns=insns; term=term}


        
let run (cg:Graph.t) (cfg:Cfg.t) : Cfg.t =
  let open SymConst in
  

  let cp_block (l:Ll.lbl) (cfg:Cfg.t) : Cfg.t =
    let b = Cfg.block cfg l in
    let cb = Graph.uid_out cg l in
    let b' = cons_block cb b in 
    Cfg.add_block l b' cfg
  in

  LblS.fold cp_block (Cfg.nodes cfg) cfg
