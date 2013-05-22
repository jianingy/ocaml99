(*
 * filename   : p19.ml
 * created at : 2013-05-19 20:40:45
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Rotate a list N places to the left. *)


let rotate list n =
  let rec aux i = function
    | [] -> []
    | h :: t as l ->
      if i = 0 then l
      else aux (i - 1) (List.rev (h :: (List.rev t))) in
  let length = List.length list in
  let shift = ((n mod length) + length) mod length in
  aux shift list ;;



rotate [`a;`b;`c;`d;`e;`f;`g;`h] 3 = [`d;`e;`f;`g;`h;`a;`b;`c];;
rotate [`a;`b;`c;`d;`e;`f;`g;`h] (-2) = [`g;`h;`a;`b;`c;`d;`e;`f] ;;
