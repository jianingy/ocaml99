(*
 * filename   : p9.ml
 * created at : 2013-05-12 14:13:19
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Pack consecutive duplicates of list elements into sublists. *)

let pack list =
  let rec aux acc = function
    | h :: t -> if List.length acc > 1 && h = List.hd (List.hd acc)
      then aux ((h :: (List.hd acc)) :: (List.tl acc)) t
      else aux ([h] :: acc) t
    | [] -> acc in
  List.rev (aux [] list) ;;

(*

# let pack list =
    let rec aux current acc = function
      | [] -> []    (* Can only be reached if original list is empty *)
      | [x] -> (x :: current) :: acc
      | a :: (b :: _ as t) ->
         if a = b then aux (a :: current) acc t
         else aux [] ((a :: current) :: acc) t  in
    List.rev (aux [] [] list);;

*)

pack [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`d;`e;`e;`e;`e] ;;
