(*
 * filename   : p6.ml
 * created at : 2013-05-09 21:57:19
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(*
  Find out whether a list is a palindrome.
*)

let is_palindrome c =
  c = List.rev c ;;

is_palindrome [ `x ; `a ; `m ; `a ; `x ];;
not (is_palindrome [ `a ; `b ]);;
