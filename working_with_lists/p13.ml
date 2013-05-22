(*
 * filename   : p13.ml
 * created at : 2013-05-18 22:32:38
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Implement the so-called run-length encoding data compression method
  directly. I.e. don't explicitly create the sublists containing the
  duplicates, as in problem “Pack consecutive duplicates of list
  elements into sublists”, but only count them. As in problem “Modified
  run-length encoding”, simplify the result list by replacing the
  singleton lists (1 X) by X. *)
