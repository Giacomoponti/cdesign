(** Alias Analysis *)

open Ll
open Datastructures

(* The lattice of abstract pointers ----------------------------------------- *)
module SymPtr =
  struct
    type t = MayAlias           (* uid names a pointer that may be aliased *)
           | Unique             (* uid is the unique name for a pointer *)
           | UndefAlias         (* uid is not in scope or not a pointer *)

    let compare : t -> t -> int = Pervasives.compare

    let to_string = function
      | MayAlias -> "MayAlias"
      | Unique -> "Unique"
      | UndefAlias -> "UndefAlias"

  end

(* The analysis computes, at each program point, which UIDs in scope are a unique name
   for a stack slot and which may have aliases *)
type fact = SymPtr.t UidM.t

(* flow function across Ll instructions ------------------------------------- *)
(* TASK: complete the flow function for alias analysis. 

   - After an alloca, the defined UID is the unique name for a stack slot
   - A pointer returned by a load, call, bitcast, or GEP may be aliased
   - A pointer passed as an argument to a call, bitcast, GEP, or store
     may be aliased
   - Other instructions do not define pointers

 *)
let insn_flow ((u,i):uid * insn) (d:fact) : fact =
  begin match i with 
  | Alloca ty -> UidM.add u SymPtr.Unique d 
  | Load (ty, op) -> begin match ty with 
                      |Ptr (Ptr _) ->  UidM.add u SymPtr.MayAlias d
                      |_ -> d
                     end
  | Store (ty, op1, op2) -> begin match ty, op1 with 
                            | (Ptr _, Id u) -> UidM.add u SymPtr.MayAlias d
                            | _ -> d 
                            end
  | Call (ty, op, ls) -> let args = (ty, Id u)::ls in 
                          let d_ref = ref d in 
                            let u = (for i=0 to (List.length args)-1 do 
                              begin match (List.nth args i) with 
                              | (Ptr _, Id id) -> d_ref := UidM.add id SymPtr.MayAlias (!d_ref)
                              | _ -> () 
                              end 
                            done) in (!d_ref)                                                   
  | Bitcast (ty1, op, ty2) -> begin match ty1, op with 
                              | (Ptr _, Id id) -> let new_d = UidM.add id SymPtr.MayAlias d in
                                                  begin match ty2 with 
                                                  | Ptr _ -> UidM.add u SymPtr.MayAlias new_d
                                                  | _ -> new_d
                                                  end
                              | _ -> begin match ty2 with 
                                      | Ptr _ -> UidM.add u SymPtr.MayAlias d
                                      | _ -> d
                                      end
                              end
  | Gep (ty, op, op_ls) -> begin match ty, op with 
                            | (Ptr _, Id id) -> UidM.add u SymPtr.MayAlias (UidM.add id SymPtr.MayAlias d)
                            | _ -> UidM.add u SymPtr.MayAlias d
                            end
  | _ -> d 
  end

(* The flow function across terminators is trivial: they never change alias info *)
let terminator_flow t (d:fact) : fact = d

(* module for instantiating the generic framework --------------------------- *)
module Fact =
  struct
    type t = fact
    let forwards = true

    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    (* UndefAlias is logically the same as not having a mapping in the fact. To
       compare dataflow facts, we first remove all of these *)
    let normalize : fact -> fact = 
      UidM.filter (fun _ v -> v != SymPtr.UndefAlias)

    let compare (d:fact) (e:fact) : int = 
      UidM.compare SymPtr.compare (normalize d) (normalize e)

    let to_string : fact -> string =
      UidM.to_string (fun _ v -> SymPtr.to_string v)

    (* TASK: complete the "combine" operation for alias analysis.

       The alias analysis should take the join over predecessors to compute the
       flow into a node. You may find the UidM.merge function useful.

       It may be useful to define a helper function that knows how to take the
       join of two SymPtr.t facts.
    *)
    let combine (ds:fact list) : fact =
      let empty_ref = ref UidM.empty in 
        let helper x y = (begin match x, y with 
                          |(SymPtr.MayAlias, SymPtr.Unique ) -> Some SymPtr.MayAlias
                          |(SymPtr.Unique,SymPtr.MayAlias) -> Some SymPtr.MayAlias
                          |(SymPtr.Unique, SymPtr.Unique) -> Some SymPtr.Unique
                          |(SymPtr.MayAlias, SymPtr.MayAlias) -> Some SymPtr.MayAlias
                          | _ -> Some SymPtr.UndefAlias
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
     in the function to UndefAlias *)
  let init l = UidM.empty in

  (* the flow into the entry node should indicate that any pointer parameter 
     to the function may be aliased *)
  let alias_in = 
    List.fold_right 
      (fun (u,t) -> match t with
                    | Ptr _ -> UidM.add u SymPtr.MayAlias
                    | _ -> fun m -> m) 
      g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init alias_in g in
  Solver.solve fg

