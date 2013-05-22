(*
 * filename   : p24.ml
 * created at : 2013-05-22 21:07:41
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Lotto: Draw N different random numbers from the set 1..M.

   The selected numbers shall be returned in a list. *)

let rec lotto_select n m =
  let random = (Random.int m) + 1 in
  if n > 1 then random :: (lotto_select (n - 1) m)
  else [random] ;;

lotto_select 6 49 ;;
