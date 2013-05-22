(*
 * filename   : p14.ml
 * created at : 2013-05-18 22:36:14
 * author     : Jianing Yang <jianingy.yang AT gmail DOT com>
 *)


(* Duplicate the elements of a list. *)

let rec duplicate = function
    | [] -> []
    | h :: t -> h :: (h :: duplicate t) ;;

duplicate [`a;`b;`c;`c;`d] = [`a;`a;`b;`b;`c;`c;`c;`c;`d;`d];;
