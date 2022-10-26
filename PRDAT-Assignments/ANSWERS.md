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
