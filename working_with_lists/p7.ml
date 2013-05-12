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


let flatten =
  let rec aux c = function
    | [] -> c
    | [One (x)] -> x :: c
    | [Many (x)] -> (aux x) :: c
    | [One (x)] :: t -> (aux t) :: x :: c
    | [Many (x)] :: t -> (aux t) :: (aux x) :: c
  aux (Many []) ;;

flatten [ One `a ; Many [ One `b ; Many [ One `c ; One `d ] ; One `e ] ] ;;
