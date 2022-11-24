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

## Exercise 11.2

## Exercise 11.2.1

The `revc` function is implemented in the `ex_11_2.fs` file and looks like this:

```fsharp
let rec revc (xs: 'a list) (c: 'a list -> 'b): 'b = 
    match xs with 
    |[] -> c []
    |x :: xr -> revc xr (fun v -> c (v @ [x]))
```

## Exercise 11.2.2

Since our base case has a call to `c` and it is what we return, the result will be id appended to itself to itself and return it.

## Exercise 11.2.3

```fsharp
let rec revi (xs: 'a list) (acc: 'a list): 'a list = 
    match xs with 
    |[] -> acc
    |x :: xr -> revi xr (acc @ [x])
```

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

### Exercise 11.8.1


```fsharp
> run (Every(Write(Prim("+", CstI 1, Prim("*", CstI 2, FromTo(1, 4))))));;
3 5 7 9 val it: value = Int 0
```

```fsharp
> run (Every(Write(Prim("+", Prim("*", CstI 10, FromTo(2, 4)), FromTo(1, 2)))));;
21 22 31 32 41 42 val it: value = Int 0
```

### Exercise 11.8.2

```fsharp
> run (Write(Prim("<", CstI 50, Prim("*", CstI 7, (FromTo(1,10))))));;
56 val it: value = Int 56
```

### Exercise 11.8.3

We have added the `Prim1` type to line 34 in `Icon.fs`. We have also added the `even` and `sqr` primitive types on line 95 & 97.

Examples:

```fsharp
>  run (Every(Write(Prim1("sqr", FromTo(1,10)))));;
1 4 9 16 25 36 49 64 81 100 val it: value = Int 0

>  run (Every(Write(Prim1("even", FromTo(1,100)))));;
2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90 92 94 96 98 100 val it: value = Int 0
```

### Exercise 11.8.4

`multiples` can be found on line 103 in `Icon.fs`.

Example:

```fsharp
>  run (Every(Write(Prim1("multiples", CstI 2))));;
2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90 92 94 96 98 100 102 104 106 108 110 112 114 116 118 120 122 124 126 128 130 132 134 136 138 140 142 144 146 148 150 152 154 156 158 160 162 164 166 168 170 172 174 176 178 180 182 184 186 188 190 192 194 196 198 200 202 204 206 208 210 212 214 216 218 220 222 224 226 228 230 232 234 236 238 240 242 244 246 248 250 252 254 256 258 260 262 264 266 268 270 272 274 276 278 280 282 284 286 288 290 292 294 296 298 300 302 304 306 308 310 312 314 316 318 320 322 324 326 328 330 332 334 336 

... INFINITE
```
