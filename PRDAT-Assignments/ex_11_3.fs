let rec prod xs =
    match xs with
    | [] -> 1
    | x::xr -> x * prod xr;;


let rec prodc (xs: int list) (c: int -> int): int =
    match xs with
    | [] -> c 1
    | x::xr -> prodc xr (fun n -> c (x * n));;


run (
    Every(
        And(
            Write(
                Prim("+", CstI 1, Prim("*", CstI 10, FromTo(2, 4)))
            ),
            Write(
                Prim("+", CstI 2, Prim("*", CstI 10, FromTo(2, 4)))
            )
        )
    )
);;