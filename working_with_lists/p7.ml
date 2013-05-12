(*
 * filename   : p7.ml
 * created at : 2013-05-12 12:43:58
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Flatten a nested list structure. *)

(* There is no nested list type in OCaml, so we need to define one
   first. A node of a nested list is either an element, or a list of
   nodes. *)

type 'a node =
  | One of 'a
  | Many of 'a node list;;

let flatten list =
  let rec aux acc = function
    | [] -> acc
    | One x :: t -> aux (x :: acc) t
    | Many l :: t -> aux (aux acc l) t in
  List.rev (aux [] list);;

(*
let flatten list =
  let rec aux c = function
    | [] -> c
    | [One x] -> x :: c
    | [Many x] -> (aux c x) @ c
    | (One x) :: t -> (aux c t) @ (x :: c)
    | (Many x) :: t -> (aux c t) @ (aux c x) @ c in
  List.rev (aux [] list) ;;
*)

flatten [ One `a ; Many [ One `b ; Many [ One `c ; One `d ] ; One `e ] ] = [ `a ; `b ; `c ; `d ; `e ];;
