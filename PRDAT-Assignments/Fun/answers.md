# Exercise 4.1
- Run the `build.ps1` file in this directory to launch FSI. If you don't have PWSH, you can copy the commands in there.
- From here, write `open ParseAndRun;;`
- Now you should be able to use `fromString` and `run` :)

# Exercise 4.2
1) 
```fsharp
run (fromString "let sum n = if n = 0 then 0 else n + sum (n-1) in sum 1000 end");;
```
2)
```fsharp
run (fromString "let pow exp = if exp = 1 then 3 else 3 * (pow (exp-1)) in pow 8 end");;
```
3)
```fsharp
run (fromString "let pow exp = if exp = 1 then 3 else 3 * (pow (exp-1)) in let bing exp = if exp = 0 then 1 else (pow exp) + bing (exp-1) in bing 11 end end");;
```
4)
```fsharp
run (fromString "let pow8 x = x * x * x * x * x * x * x * x in let bing n = if n = 1 then 1 else pow8 n + bing (n-1) in bing 10 end end");;
```

# Exercise 4.3 & 4.4
## Absyn.fs
We have changed the `Letfun` and `Call` to include a string list.

## Fun.fs
- Closure value has been changed to take a string list (line 27).
- Closure now retrieves a list of variables with its values (line 62-65). 

## FunPar.fsy
- Added `Names` which contains a string list of the variable names used for `let` (line 30) (line 66+)
- Added `AtExprs` for function call handling (line 76+)

# Exercise 4.5
## FunLex.fsl
Added two tokens:
```
  | "&&"            { AND }
  | "||"            { OR }
(line 51)
```

## FunPar.fsy
Added the AND & OR tokens as well as the EXPR handling:
```
%token EQ NE GT LT GE LE AND OR 
(line 16)

| Expr AND   Expr      { If($1, $3, $1)         }
| Expr OR    Expr      { If($1, $1, $3)         }
(line 54-55)
```

# Note
If you run the examples for the book, you will see they succeed, e.g. for multiple variable handling:
```fsharp
let pow x n = if n=0 then 1 else x * pow x (n-1) in pow 3 8 end
// or
let max2 a b = if a<b then b else a in let max3 a b c = max2 a (max2 b c) in max3 25 6 62 end end
```

