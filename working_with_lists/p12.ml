(*
 * filename   : p12.ml
 * created at : 2013-05-14 11:07:56
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)


type 'a rle =
  | One of 'a
  | Many of (int * 'a) ;;

let decode list =
  let rec dup acc n c =
    if n = 0 then acc
    else dup (c :: acc) (n - 1) c in
  let rec aux acc = function
    | [] -> acc
    | Many (n, c) :: t ->
      if n > 0 then aux (c :: acc) (Many (n - 1, c) :: t)
      else aux acc t
    | One (c) :: t -> aux (c :: acc) t in
  List.rev (aux [] list) ;;


decode [Many (4,`a) ; One `b ; Many (2,`c) ; Many (2,`a) ; One `d ; Many (4,`e)]  = [`a;`a;`a;`a;`b;`c;`c;`a;`a;`d;`e;`e;`e;`e];;
decode [Many (4,`a) ; One `b ; Many (2,`c) ; Many (2,`a) ; One `d ; Many (4,`e)];;
