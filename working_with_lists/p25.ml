(*
 * filename   : p25.ml
 * created at : 2013-05-22 21:11:18
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)


(* Generate a random permutation of the elements of a list. *)

let rec insert_at acc n elt = function
  | [] -> List.rev (elt :: acc)
  | h :: t as l ->
    if n = 0 then (List.rev acc) @ (elt :: l)
    else insert_at (h :: acc) (n - 1) elt t;;

let permutation =
  let rec aux acc = function
  | [] -> acc
  | h :: t -> aux (insert_at [] (Random.int ((List.length acc) + 1)) h acc) t in
  aux [] ;;

permutation ['a';'b';'c';'d';'e';'f'];;
