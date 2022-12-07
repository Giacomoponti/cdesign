(** Dead Code Elimination  *)
open Ll
open Datastructures


(* expose a top-level analysis operation ------------------------------------ *)
(* TASK: This function should optimize a block by removing dead instructions
   - lb: a function from uids to the live-OUT set at the 
     corresponding program point
   - ab: the alias map flowing IN to each program point in the block
   - b: the current ll block

   Note: 
     Call instructions are never considered to be dead (they might produce
     side effects)

     Store instructions are not dead if the pointer written to is live _or_
     the pointer written to may be aliased.

     Other instructions are dead if the value they compute is not live.

   Hint: Consider using List.filter
 *)
let dce_block (lb:uid -> Liveness.Fact.t) 
              (ab:uid -> Alias.fact)
              (b:Ll.block) : Ll.block =
  let ins_ls = b.insns in 
    let rec loop ls acc = (begin match ls with 
                      | [] -> List.rev acc 
                      | (x::xs) -> let (id, ins) = x in 
                                    begin match ins with 
                                     |Call(_, _, _) -> loop xs (x::acc)
                                     |Store(_, _, Id u) -> let cond = (UidS.mem u (lb id) ) || (begin match UidM.find_opt u (ab id) with
                                                                                              | None -> true
                                                                                              | Some Alias.SymPtr.MayAlias -> true
                                                                                              | Some Alias.SymPtr.Unique -> false
                                                                                              | Some Alias.SymPtr.UndefAlias -> false
                                                                                              end
                                                                                            ) in 
                                      if cond then loop xs (x::acc) else loop xs acc
                                                          
                                     |Store(_, _, _) -> loop xs (x::acc)
                                     | _ -> if (UidS.mem id (lb id)) then loop xs (x::acc) else loop xs acc
                                    end
                      end) 
                    in {insns = loop ins_ls []; term = b.term}
let run (lg:Liveness.Graph.t) (ag:Alias.Graph.t) (cfg:Cfg.t) : Cfg.t =

  LblS.fold (fun l cfg ->
    let b = Cfg.block cfg l in

    (* compute liveness at each program point for the block *)
    let lb = Liveness.Graph.uid_out lg l in

    (* compute aliases at each program point for the block *)
    let ab = Alias.Graph.uid_in ag l in 

    (* compute optimized block *)
    let b' = dce_block lb ab b in
    Cfg.add_block l b' cfg
  ) (Cfg.nodes cfg) cfg

