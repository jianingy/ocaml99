(*
 * filename   : p22.ml
 * created at : 2013-05-21 22:38:30
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Create a list containing all integers within a given range.

   If first argument is smaller than second, produce a list in decreasing
   order. *)

let rec range i j =
  let step = if i < j then 1 else -1 in
  if i = j then [i]
  else i :: (range (i + step) j) ;;



range 4 9 = [4;5;6;7;8;9];;
range 9 4 = [9;8;7;6;5;4];;
