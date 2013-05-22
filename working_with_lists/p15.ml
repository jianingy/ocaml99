(*
 * filename   : p15.ml
 * created at : 2013-05-18 22:38:57
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)


(* Replicate the elements of a list a given number of times. *)


let rec duplicate n elt =
  if n > 0 then elt :: (duplicate (n - 1) elt)
  else [] ;;

let rec replicate list n =
  match list with
    | [] -> []
    | h :: t -> (duplicate n h) @ (replicate t n) ;;

replicate [`a;`b;`c] 3 = [`a;`a;`a;`b;`b;`b;`c;`c;`c];;;;
