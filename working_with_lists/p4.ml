(*
 * filename   : p4.ml
 * created at : 2013-05-09 21:45:09
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Find the number of elements of a list.

   OCaml standard library has List.length but we ask that you reimplement
   it. Bonus for a tail recursive solution. *)

let length =
  let rec _length k = function
    | [] -> k
    | _ :: tl -> _length (k + 1) tl in
  _length 0 ;;

length [ `a ; `b ; `c] = 3;;
length [] = 0;;
