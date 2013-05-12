(*
 * filename   : p5.ml
 * created at : 2013-05-09 21:51:20
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(*
  Reverse a list.

  OCaml standard library has List.rev but we ask that you reimplement
  it.
*)

let rev =
  let rec aux c = function
    | [] -> c
    | h :: t -> aux (h :: c) t in
  aux [] ;;

rev [`a ; `b ; `c] = [`c ; `b ; `a];;
