(*
 * filename   : p2.ml
 * created at : 2013-05-06 17:53:12
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Find the last but one (last and penultimate) elements of a list. *)

let rec last_two cons =
  match cons with
    | [] -> None (* cloud be [] | [_] -> None *)
    | [x] -> None
    | [x ; y] -> Some (x, y)
    | _ :: tl -> last_two tl ;;

print_endline "==" ;;
last_two [ `a; `b; `c; `d ] = Some (`c, `d);;
last_two [ `a ] = None ;;
