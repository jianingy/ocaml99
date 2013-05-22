(*
 * filename   : p23.ml
 * created at : 2013-05-22 20:32:54
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Extract a given number of randomly selected elements from a list.

   The selected items shall be returned in a list. We use the Random
   module but do not initialize it with Random.self_init for
   reproducibility.
*)

let rand_select list n =
  if List.length list < n then failwith "don't be greedy"
  else let rec aux acc rst seq =
	 if List.length acc = n then acc
	 else match seq with
	   | [] -> aux acc [] rst
	   | h :: t ->
	     if Random.bool () then aux (h :: acc) rst t
	     else aux acc (h :: rst) t in
       aux [] [] list ;;

rand_select [`a;`b;`c;`d;`e;`f;`g;`h] 3;;
