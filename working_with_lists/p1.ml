(*
 * filename   : p1.ml
 * created at : 2013-05-06 17:49:25
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Write a function last : 'a list -> 'a option that returns the last
   element of a list. *)

let rec last cons =
  match cons with
    | [] -> None
    | [x] -> Some x
    | _ :: tl -> last tl ;;

print_endline "==" ;;
last [ `a; `b; `c; `d ] = Some `d;;
last [ `a ] = Some `a;;
last [] = None;;
