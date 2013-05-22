(*
 * filename   : p21.ml
 * created at : 2013-05-21 22:27:02
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Insert an element at a given position into a list.

   Start counting list elements with 0. *)
(*
let insert_at elt n =
  let rec aux n = function
    | [] -> [elt]
    | h :: t as l ->
      if n = 0 then elt :: l
      else h :: (aux (n - 1) t) in
  aux n ;;
insert_at `alfa 1 [`a;`b;`c;`d] = [`a;`alfa;`b;`c;`d];;
*)


let rec insert_at x n = function
    | [] -> []
    | h :: t as l -> if n = 0 then x :: l else h :: insert_at x (n-1) t;;

insert_at `alfa 0 [] ;;
