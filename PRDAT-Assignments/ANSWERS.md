# Assignment 10

## Exercise 11.1

### Exercise 11.1.1

We have written a CPS lenc in the file `ex11_1.fs`:

```fsharp
let rec len xs =
    match xs with
    | [] -> 0
    | x::xr -> 1 + len xr;;

let rec lenc (xs: 'a list) (c: int -> 'b): 'b =
    match xs with
    | [] -> c 0
    | x::xr -> lenc xr (fun n -> c (1 + n));;
```

Calling it with the `printf` statement as described in the exercise prints the following:

```fsharp
> lenc [2; 5; 7] id |> (printf "The answer is ’%d’\n");;
The answer is ’3’
val it: unit = ()

> len [2; 5; 7] |> (printf "The answer is ’%d’\n");;
The answer is ’3’
val it: unit = ()
```

### Exercise 11.1.2

When we run it with this function `(fun v -> 2*v)`, we get:

```fsharp
> let xs = [2; 5; 7];;
val xs: int list = [2; 5; 7]

> lenc xs (fun v -> 2*v);;
val it: int = 6
```

This is because we multiply the value at the end with 2, so `2 * 3 = 6`.

### Exercise 11.1.3

We have written the `leni` function in the same `ex11_1.fs` file. This function looks like this:

```fsharp
let rec leni (xs: 'a list) (acc: int): int =
    match xs with
    | [] -> acc
    | x::xr -> leni xr (1 + acc);;
```

Running it on the `xs` list returns the following:

```fsharp
> leni xs 0;;
val it: int = 3
```

**What is the relation between lenc and leni?**
They are both tail recursive. 


## Exercise 11.3

We have implemented the `prodc` function in the `ex_11_3.fs` file. It loos like this:

```fsharp
let rec prod xs =
    match xs with
    | [] -> 1
    | x::xr -> x * prod xr;;


let rec prodc (xs: int list) (c: int -> int): int =
    match xs with
    | [] -> c 1
    | x::xr -> prodc xr (fun n -> c (x * n));;
```

Calling these two functions with the `xs` list defined from before, returns the following:

```fsharp
> prodc xs id;;
val it: int = 70

> prod xs;;
val it: int = 70
```

## Exercise 11.4
We have implemented the optimized `prodc` and the accumulator version of `prodi` in the `ex_11_4.fs` file.

They look like this:

```fsharp
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
```

Both of them terminates immediately when a zero is encountered.

## Exercise 11.8