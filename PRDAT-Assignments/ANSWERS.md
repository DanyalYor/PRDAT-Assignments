# Assignment 8.1

## Assignment 8.1.2

Compiling `ex3.c` returns the following byte structure:

```fsharp
> compile "ex3";;
val it: Machine.instr list =
  [LDARGS; CALL (1, "L1"); STOP; Label "L1"; INCSP 1; GETBP; CSTI 1; ADD;
   CSTI 0; STI; INCSP -1; GOTO "L3"; Label "L2"; GETBP; CSTI 1; ADD; LDI;
   PRINTI; INCSP -1; GETBP; CSTI 1; ADD; GETBP; CSTI 1; ADD; LDI; CSTI 1; ADD;
   STI; INCSP -1; INCSP 0; Label "L3"; GETBP; CSTI 1; ADD; LDI; GETBP; CSTI 0;
   ADD; LDI; LT; IFNZRO "L2"; INCSP -1; RET 0]
```

Compiling `ex5.c` returns the following byte structure:

```fsharp
> compile "ex5";;
val it: Machine.instr list =
  [LDARGS; CALL (1, "L1"); STOP; Label "L1"; INCSP 1; GETBP; CSTI 1; ADD;
   GETBP; CSTI 0; ADD; LDI; STI; INCSP -1; INCSP 1; GETBP; CSTI 0; ADD; LDI;
   GETBP; CSTI 2; ADD; CALL (2, "L2"); INCSP -1; GETBP; CSTI 2; ADD; LDI;
   PRINTI; INCSP -1; INCSP -1; GETBP; CSTI 1; ADD; LDI; PRINTI; INCSP -1;
   INCSP -1; RET 0; Label "L2"; GETBP; CSTI 1; ADD; LDI; GETBP; CSTI 0; ADD;
   LDI; GETBP; CSTI 0; ADD; LDI; MUL; STI; INCSP -1; INCSP 0; RET 1]
```

We then went ahead and structured both byte codes and wrote what was happening in the C code.

`ex3`

```fsharp
LDARGS
CALL (1, "L1")
STOP
Label "L1"
INCSP 1
GETBP
CSTI 1
ADD
CSTI 0
STI
INCSP -1
GOTO "L3"
Label "L2"
GETBP
CSTI 1
ADD
LDI
PRINTI
INCSP -1
GETBP
CSTI 1
ADD
GETBP
CSTI 1
ADD
LDI
CSTI 1
ADD
STI
INCSP -1
INCSP 0
Label "L3"
GETBP
CSTI 1
ADD
LDI
GETBP
CSTI 0
ADD
LDI
LT
IFNZRO "L2"
INCSP -1
RET 0
```

`ex5`

```fsharp
LDARGS // init
CALL (1, "L1") 
STOP
Label "L1"
INCSP 1 // main
GETBP
CSTI 1
ADD
GETBP
CSTI 0
ADD
LDI
STI
INCSP -1
INCSP 1
GETBP
CSTI 0
ADD
LDI
GETBP
CSTI 2
ADD
CALL (2, "L2")
INCSP -1
GETBP
CSTI 2
ADD
LDI
PRINTI
INCSP -1
INCSP -1
GETBP
CSTI 1
ADD
LDI
PRINTI
INCSP -1
INCSP -1
RET 0
Label "L2"
GETBP
CSTI 1
ADD
LDI
GETBP
CSTI 0
ADD
LDI
GETBP
CSTI 0
ADD
LDI
MUL
STI
INCSP -1
INCSP 0
RET 1
```
