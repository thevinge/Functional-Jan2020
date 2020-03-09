open QCheck

(*Exercise 2 A *)
let rec member xs y = match xs with
   | [] -> false
   | x::xs -> x=y || member xs y
;;

member (Gen.(generate1 (list_size (int_bound 1_000_000) small_int))) 200000;;
(*Exercise 2 B*)

let rec fac n = match n with
   | 0 -> 1
   | _ -> n * fac (n-1)
 
let rec fac' n acc = match n with
   | 0 -> acc
   | _ -> fac' (n-1) (n * acc)
;;

 let rec reverse xs = match xs with
   | [] -> []
   | x::xs -> (reverse xs) @ [x]
;;

