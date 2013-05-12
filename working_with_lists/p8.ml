(*
 * filename   : p8.ml
 * created at : 2013-05-12 14:07:02
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)


(* Eliminate consecutive duplicates of list elements. *)
 let rec compress = function
    | a :: (b :: _ as t) -> if a = b then compress t else a :: compress t
    | smaller -> smaller;;

(*
let compress =
  let rec aux e = function
      | [] -> []
      | h :: t -> if h = e then (aux e t) else h :: (aux h t) in
  aux `None ;;
*)
compress [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e] = [`a;`b;`c;`a;`d;`e];;
