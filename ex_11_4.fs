// Optimized prod
let rec prodc (xs: int list) (c: int -> int): int =
    match xs with
    | [] -> c 1
    | 0::_ -> 0 
    | x::xr -> prodc xr (fun n -> c (x * n));;

// Tail recursive prod
let rec prodi (xs: int list) (acc: int): int =
    match xs with
    | [] -> acc
    | 0::_ -> 0
    | x::xr -> prodi xr (x * acc);;
