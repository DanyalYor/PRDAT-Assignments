# Assignment 11

## Exercise 12.1


## Exercise 12.2

We have added the static compiling of the constant evaluations by extending the `addCST` function in `Contcomp.fs`. This can be found on line 101.

Essentially, it includes this:

```fsharp
    | (0, CSTI(x) :: CSTI(y) :: LE :: C1) -> 
      (if (x <= y) then CSTI 1 else CSTI 0) :: C1
    | (0, CSTI(x) :: CSTI(y) :: GE :: C1) -> 
      (if (x >= y) then CSTI 1 else CSTI 0) :: C1
    | (0, CSTI(x) :: CSTI(y) :: LT :: C1) -> 
      (if (x < y) then CSTI 1 else CSTI 0) :: C1
    | (0, CSTI(x) :: CSTI(y) :: GT :: C1) -> 
      (if (x > y) then CSTI 1 else CSTI 0) :: C1
    | (0, CSTI(x) :: CSTI(y) :: NE :: C1) -> 
      (if (x <> y) then CSTI 1 else CSTI 0) :: C1
    | (0, CSTI(x) :: CSTI(y) :: EQ :: C1) -> 
      (if (x = y) then CSTI 1 else CSTI 0) :: C1
```

## Exercise 12.3

We have made the following changes to include the ternary condition operator, which we have called `Cond`:

- `Absyn.fs`, line 26
- `CLex.fsl`, line 62-63
- `CPar.fsy`, line 21, line 24, line 136
- `Contcomp.fs`, line 318

`condex.c` contains the following code:

```c
void main(int n) {  
  int i;
  i = 0 < 5 ? 2 : 5; 
  print i;            
  println;
}
```

When we compile it using these commands:

```fsharp
open ParseAndContcomp;;
contCompileToFile (fromFile "condex.c") "condex.out";;
```

We get:

```fsharp
[LDARGS; CALL (1, "L1"); STOP; Label "L1"; INCSP 1; GETBP; CSTI 1; ADD;
CSTI 0; CSTI 5; LT; GOTO "L2"; Label "L3"; CSTI 5; Label "L2"; STI;
INCSP -1; GETBP; CSTI 1; ADD; LDI; PRINTI; INCSP -1; CSTI 10; PRINTC; RET 2]
```

And a compiled file called `condex.out`, which contains the following:
```fsharp
24 19 1 5 25 15 1 13 0 1 1 0 0 0 5 7 16 20 0 5 12 15 -1 13 0 1 1 11 22 15 -1 0 10 23 21 2
```

As such, this works as intended!


## Exercise 12.4

Our solution is changes in our CPAR.fsy file, at line 134-135.

**How does the code quality compare to the existing complicated compilation of && and ||?**

Now instead of creating a new type of like Andalso or Orelse, we can reuse a our new Cond.

Which we can see in our Contcomp.fs in our Cond pattern match (line 318), is a lot simpler than both Andalso and Orelse.