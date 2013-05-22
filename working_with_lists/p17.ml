(*
 * filename   : p17.ml
 * created at : 2013-05-19 20:18:24
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(*
   Split a list into two parts; the length of the first part is given.

   If the length of the first part is longer than the entire list, then
   the first part is the list and the second part is empty.
*)


let split list n =
  let rec aux acc list =
    if List.length acc = n then (List.rev acc, list)
    else match list with
      | [] -> (List.rev acc, [])
      | h :: t -> aux (h :: acc) t in
  aux [] list ;;


split [`a;`b;`c;`d;`e;`f;`g;`h;`i;`j] 3 ;;

split [`a;`b;`c;`d;`e;`f;`g;`h;`i;`j] 3 = ([`a;`b;`c] , [`d;`e;`f;`g;`h;`i;`j]);;
split [`a;`b;`c;`d] 5 = ([`a; `b; `c; `d], []);;
