let rec revc (xs: 'a list) (c: 'a list -> 'b): 'b = 
    match xs with 
    |[] -> c []
    |x :: xr -> revc xr (fun v -> c (v @ [x]))

let rec revi (xs: 'a list) (acc: 'a list): 'a list = 
    match xs with 
    |[] -> acc
    |x :: xr -> revi xr (acc @ [x])
    