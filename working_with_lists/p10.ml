(*
 * filename   : p10.ml
 * created at : 2013-05-14 10:26:21
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(* Run-length encoding of a list.
   http://en.wikipedia.org/wiki/Run-length_encoding *)

let encode list =
  let rec aux acc count = function
    | [] -> []
    | [x] -> (count + 1, x) :: acc
    | a :: (b :: _ as t) ->
      if a = b then aux acc (count + 1) t
      else aux ((count + 1, a) :: acc) 0 t in
  List.rev (aux [] 0 list) ;;

encode [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e]  = [4,`a ; 1,`b ; 2,`c ; 2,`a ; 1,`d ; 4,`e] ;;
