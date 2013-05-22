(*
 * filename   : p20.ml
 * created at : 2013-05-20 20:06:35
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)


(* Remove the K'th element from a list.

   The first element of the list is numbered 0, the second 1,... *)

let remove_at n =
  let rec aux acc n = function
    | [] -> List.rev acc
    | h :: t ->
      if n = 0 then (List.rev acc) @ t
      else aux (h :: acc) (n - 1) t in
  aux [] n ;;

remove_at 1 [`a;`b;`c;`d] = [`a;`c;`d];;
