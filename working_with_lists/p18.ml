(*
 * filename   : p18.ml
 * created at : 2013-05-19 20:32:02
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)

(*
   Extract a slice from a list.

   Given two indices, i and k, the slice is the list containing the
   elements between the i'th and k'th element of the original list (both
   limits included). Start counting the elements with 0 (this is the way
   the List module numbers elements).
*)

(*

Try think in functional way

# let slice list i k =
    let rec take n = function
      | [] -> []
      | h :: t -> if n = 0 then [] else h :: take (n-1) t
    in
    let rec drop n = function
      | [] -> []
      | h :: t as l -> if n = 0 then l else drop (n-1) t
    in
    take (k - i + 1) (drop i list);;
val slice : 'a list -> int -> int -> 'a list = <fun>
*)

let slice list i k =
  let rec aux j acc = function
    | [] -> []
    | h :: t ->
      if j < i then aux (j + 1) acc t
      else if j < k + 1 then aux (j + 1) (h :: acc) t
      else List.rev acc in
  aux 0 [] list ;;

slice [`a;`b;`c;`d;`e;`f;`g;`h;`i;`j] 2 6;;
slice [`a;`b;`c;`d;`e;`f;`g;`h;`i;`j] 2 6 = [`c;`d;`e;`f;`g];;
