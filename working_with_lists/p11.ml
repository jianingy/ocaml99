(*
 * filename   : p11.ml
 * created at : 2013-05-14 10:50:04
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Modify the result of the previous problem in such a way that if an
   element has no duplicates it is simply copied into the result list.
   Only elements with duplicates are transferred as (N E) lists.

   Since OCaml lists are homogeneous, one needs to define a type to
   hold both single elements and sub-lists.
*)

type 'a rle =
  | One of 'a
  | Many of (int * 'a) ;;


let encode list =
  let rec aux acc count = function
    | [] -> []
    | [x] -> (if count > 0 then Many (count + 1, x) else One (x)) :: acc
    | a :: (b :: _ as t) ->
      if a = b then aux acc (count + 1) t
      else let current = if count > 0 then Many (count + 1, a) else One (a) in
	   aux (current :: acc) 0 t in
  List.rev (aux [] 0 list) ;;

encode [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e] = [Many (4,`a) ; One `b ; Many (2,`c) ; Many (2,`a) ; One `d ; Many (4,`e)];;
