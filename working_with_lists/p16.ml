(*
 * filename   : p16.ml
 * created at : 2013-05-18 23:02:35
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Drop every N'th element from a list. *)

let drop list n =
  let rec aux acc i = function
    | [] -> []
    | h :: t ->
      if i mod n = 0 then (aux acc (i + 1) t)
      else h :: (aux acc (i + 1) t) in
aux [] 1 list ;;


drop [`a;`b;`c;`d;`e;`f;`g;`h;`i;`j] 3 = [`a;`b;`d;`e;`g;`h;`j] ;;
