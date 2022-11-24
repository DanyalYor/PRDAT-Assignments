let rec len xs =
    match xs with
    | [] -> 0
    | x::xr -> 1 + len xr;;

let rec lenc (xs: 'a list) (c: int -> 'b): 'b =
    match xs with
    | [] -> c 0
    | x::xr -> lenc xr (fun n -> c (1 + n));;

let rec leni (xs: 'a list) (acc: int): int =
    match xs with
    | [] -> acc
    | x::xr -> leni xr (1 + acc);;

