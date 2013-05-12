(*
 * filename   : p3.ml
 * created at : 2013-05-06 17:55:30
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Find the k'th element of a list. *)

(*

  ____ _   _ ____  ______   __  _
 / ___| | | |  _ \|  _ \ \ / / | |
| |   | | | | |_) | |_) \ V /  | |
| |___| |_| |  _ <|  _ < | |   |_|
 \____|\___/|_| \_\_| \_\|_|   (_)

*)

(* my original solution
let rec at n cons =
  if n >= List.length cons then None
  else if n = 1 then Some (List.hd cons)
  else at (n - 1) (List.tl cons) ;;
*)

let rec at k = function
  | [] -> None
  | h :: t -> if k = 1 then Some h else at (k-1) t;;

at 3 [ `a ; `b ; `c ; `d ; `e ] = Some `c;;
at 3 [ `a ] = None;;
