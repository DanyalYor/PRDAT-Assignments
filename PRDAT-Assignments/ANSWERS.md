# Assignment 7.1

We run these commands:

```ps
fslex --unicode CLex.fsl
fsyacc --module CPar CPar.fsy
fsharpi -r ~/fsharp/FsLexYacc.Runtime.dll Absyn.fs CPar.fs CLex.fs Parse.fs Interp.fs ParseAndRun.fs
```

which puts us into interactive mode.

Here, we run the `ex1.c` file using this:

```fsharp
run (fromFile "ex1.c") [17];;
```

which gives us this:

```fsharp
>  run (fromFile "ex1.c") [17];;
17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
val it: Interp.store = map [(0, 0)]
```

This is the abstract syntax, including declarations, statements, types and expressions.

Statements are declared as STMT.
Declarations are declared as Assign
There are two types. In the while loop, we get a boolean & n is an int - and the function "main" returns nothing.
Expressions are declared as Expr.

```fsharp
  Prog
    [Fundec
       (None, "main", [(TypI, "n")],
        Block
          [Stmt
             (While
                (Prim2 (">", Access (AccVar "n"), CstI 0), 
                 Block
                   [Stmt (Expr (Prim1 ("printi", Access (AccVar "n"))));
                    Stmt
                      (Expr
                         (Assign
                            (AccVar "n",
                             Prim2 ("-", Access (AccVar "n"), CstI 1))))]));
           Stmt (Expr (Prim1 ("printc", CstI 10)))])]
```

We also run `ex11.c` using the commands above. It prints a lot of lines, so we have decided not to include that. It returns this:

```fsharp
val it: Interp.store =
  map
    [(0, 8); (1, 0); (2, 9); (3, -999); (4, 0); (5, 0); (6, 0); (7, 0); (8, 0);
     ...]
```

# Assignment 7.2

## Assignment 7.2.1

Our implementation of the `arrsum` function can be found in the `arrsum.c` file. When we run this file, we get:

```fsharp
>    run (fromFile "arrsum.c") [1];;
7
val it: Interp.store =
  map
    [(0, 7); (1, 7); (2, 13); (3, 9); (4, 8); (5, 1); (6, 1); (7, 1); (8, 0);
     ...]

>    run (fromFile "arrsum.c") [2];;
20
val it: Interp.store =
  map
    [(0, 20); (1, 7); (2, 13); (3, 9); (4, 8); (5, 1); (6, 2); (7, 1); (8, 0);
     ...]

>    run (fromFile "arrsum.c") [3];;
29
val it: Interp.store =
  map
    [(0, 29); (1, 7); (2, 13); (3, 9); (4, 8); (5, 1); (6, 3); (7, 1); (8, 0);
     ...]

>    run (fromFile "arrsum.c") [4];;
37
val it: Interp.store =
  map
    [(0, 37); (1, 7); (2, 13); (3, 9); (4, 8); (5, 1); (6, 4); (7, 1); (8, 0);
     ...]
```

## Assignment 7.2.2

Our implementation of the `squares` function can be found in the `squares.c` file. When we run this file, we get:

```fsharp
>    run (fromFile "squares.c") [5];;
30
val it: Interp.store =
  map
    [(0, 30); (1, 0); (2, 1); (3, 4); (4, 9); (5, 16); (6, -999); (7, -999);
     (8, -999); ...]

>    run (fromFile "squares.c") [10];;
285
val it: Interp.store =
  map
    [(0, 285); (1, 0); (2, 1); (3, 4); (4, 9); (5, 16); (6, 25); (7, 36);
     (8, 49); ...]

>    run (fromFile "squares.c") [15];;
1015
val it: Interp.store =
  map
    [(0, 1015); (1, 0); (2, 1); (3, 4); (4, 9); (5, 16); (6, 25); (7, 36);
     (8, 49); ...]

>    run (fromFile "squares.c") [20];;
2470
val it: Interp.store =
  map
    [(0, 2470); (1, 0); (2, 1); (3, 4); (4, 9); (5, 16); (6, 25); (7, 36);
     (8, 49); ...]
```

## Assignment 7.2.3

Our implementation of the `histogram` function can be found in the `histogram.c` file. When we run this file, we get:

# Assignment 7.3

# Assignment 7.4

# Assignment 7.5
