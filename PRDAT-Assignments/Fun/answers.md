# Exercise 4.1
- Run the `build.ps1` file in this directory to launch FSI. If you don't have PWSH, you can copy the commands in there.
- From here, write `open ParseAndRun;;`
- Now you should be able to use `fromString` and `run` :)

When doing so, you should see something like this in your terminal:
```fsharp
❯ .\build.ps1
        building tables
computing first function...        time: 00:00:00.0858620
building kernels...        time: 00:00:00.0620148
building kernel table...        time: 00:00:00.0184882
computing lookahead relations.....................................................................        time: 00:00:00.1065496
building lookahead table...        time: 00:00:00.0264786
building action table...        shift/reduce error at state 11 on terminal AND between {noprec shift(43)} and {[explicit left 9995] reduce(Expr:'IF' Expr 'THEN' Expr 'ELSE' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 11 on terminal OR between {noprec shift(44)} and {[explicit left 9995] reduce(Expr:'IF' Expr 'THEN' Expr 'ELSE' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 13 on terminal AND between {noprec shift(43)} and {[explicit left 9998] reduce(Expr:'MINUS' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 13 on terminal OR between {noprec shift(44)} and {[explicit left 9998] reduce(Expr:'MINUS' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 14 on terminal AND between {noprec shift(43)} and {[explicit left 9998] reduce(Expr:Expr 'PLUS' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 14 on terminal OR between {noprec shift(44)} and {[explicit left 9998] reduce(Expr:Expr 'PLUS' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 15 on terminal AND between {noprec shift(43)} and {[explicit left 9998] reduce(Expr:Expr 'MINUS' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 15 on terminal OR between {noprec shift(44)} and {[explicit left 9998] reduce(Expr:Expr 'MINUS' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 16 on terminal AND between {noprec shift(43)} and {[explicit left 9999] reduce(Expr:Expr 'TIMES' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 16 on terminal OR between {noprec shift(44)} and {[explicit left 9999] reduce(Expr:Expr 'TIMES' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 17 on terminal AND between {noprec shift(43)} and {[explicit left 9999] reduce(Expr:Expr 'DIV' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 17 on terminal OR between {noprec shift(44)} and {[explicit left 9999] reduce(Expr:Expr 'DIV' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 18 on terminal AND between {noprec shift(43)} and {[explicit left 9999] reduce(Expr:Expr 'MOD' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 18 on terminal OR between {noprec shift(44)} and {[explicit left 9999] reduce(Expr:Expr 'MOD' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 19 on terminal AND between {noprec shift(43)} and {[explicit left 9996] reduce(Expr:Expr 'EQ' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 19 on terminal OR between {noprec shift(44)} and {[explicit left 9996] reduce(Expr:Expr 'EQ' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 20 on terminal AND between {noprec shift(43)} and {[explicit left 9996] reduce(Expr:Expr 'NE' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 20 on terminal OR between {noprec shift(44)} and {[explicit left 9996] reduce(Expr:Expr 'NE' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 21 on terminal AND between {noprec shift(43)} and {[explicit left 9997] reduce(Expr:Expr 'GT' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 21 on terminal OR between {noprec shift(44)} and {[explicit left 9997] reduce(Expr:Expr 'GT' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 22 on terminal AND between {noprec shift(43)} and {[explicit left 9997] reduce(Expr:Expr 'LT' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 22 on terminal OR between {noprec shift(44)} and {[explicit left 9997] reduce(Expr:Expr 'LT' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 23 on terminal AND between {noprec shift(43)} and {[explicit left 9997] reduce(Expr:Expr 'GE' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 23 on terminal OR between {noprec shift(44)} and {[explicit left 9997] reduce(Expr:Expr 'GE' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 24 on terminal AND between {noprec shift(43)} and {[explicit left 9997] reduce(Expr:Expr 'LE' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 24 on terminal OR between {noprec shift(44)} and {[explicit left 9997] reduce(Expr:Expr 'LE' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 25 on terminal EQ between {[explicit left 9996] shift(37)} and {noprec reduce(Expr:Expr 'AND' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 25 on terminal NE between {[explicit left 9996] shift(38)} and {noprec reduce(Expr:Expr 'AND' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 25 on terminal GT between {[explicit left 9997] shift(39)} and {noprec reduce(Expr:Expr 'AND' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 25 on terminal LT between {[explicit left 9997] shift(40)} and {noprec reduce(Expr:Expr 'AND' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 25 on terminal GE between {[explicit left 9997] shift(41)} and {noprec reduce(Expr:Expr 'AND' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 25 on terminal LE between {[explicit left 9997] shift(42)} and {noprec reduce(Expr:Expr 'AND' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 25 on terminal AND between {noprec shift(43)} and {noprec reduce(Expr:Expr 'AND' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 25 on terminal PLUS between {[explicit left 9998] shift(32)} and {noprec reduce(Expr:Expr 'AND' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 25 on terminal MINUS between {[explicit left 9998] shift(33)} and {noprec reduce(Expr:Expr 'AND' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 25 on terminal TIMES between {[explicit left 9999] shift(34)} and {noprec reduce(Expr:Expr 'AND' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 25 on terminal DIV between {[explicit left 9999] shift(35)} and {noprec reduce(Expr:Expr 'AND' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 25 on terminal MOD between {[explicit left 9999] shift(36)} and {noprec reduce(Expr:Expr 'AND' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 25 on terminal OR between {noprec shift(44)} and {noprec reduce(Expr:Expr 'AND' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 26 on terminal EQ between {[explicit left 9996] shift(37)} and {noprec reduce(Expr:Expr 'OR' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 26 on terminal NE between {[explicit left 9996] shift(38)} and {noprec reduce(Expr:Expr 'OR' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 26 on terminal GT between {[explicit left 9997] shift(39)} and {noprec reduce(Expr:Expr 'OR' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 26 on terminal LT between {[explicit left 9997] shift(40)} and {noprec reduce(Expr:Expr 'OR' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 26 on terminal GE between {[explicit left 9997] shift(41)} and {noprec reduce(Expr:Expr 'OR' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 26 on terminal LE between {[explicit left 9997] shift(42)} and {noprec reduce(Expr:Expr 'OR' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 26 on terminal AND between {noprec shift(43)} and {noprec reduce(Expr:Expr 'OR' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 26 on terminal OR between {noprec shift(44)} and {noprec reduce(Expr:Expr 'OR' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 26 on terminal PLUS between {[explicit left 9998] shift(32)} and {noprec reduce(Expr:Expr 'OR' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 26 on terminal MINUS between {[explicit left 9998] shift(33)} and {noprec reduce(Expr:Expr 'OR' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 26 on terminal TIMES between {[explicit left 9999] shift(34)} and {noprec reduce(Expr:Expr 'OR' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 26 on terminal DIV between {[explicit left 9999] shift(35)} and {noprec reduce(Expr:Expr 'OR' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 26 on terminal MOD between {[explicit left 9999] shift(36)} and {noprec reduce(Expr:Expr 'OR' Expr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 62 on terminal LPAR between {noprec shift(56)} and {noprec reduce(AtExprs:AtExpr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 62 on terminal LET between {noprec shift(47)} and {noprec reduce(AtExprs:AtExpr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 62 on terminal NAME between {noprec shift(46)} and {noprec reduce(AtExprs:AtExpr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 62 on terminal CSTBOOL between {noprec shift(65)} and {noprec reduce(AtExprs:AtExpr)} - assuming the former because we prefer shift when unable to compare precedences
        shift/reduce error at state 62 on terminal CSTINT between {noprec shift(64)} and {noprec reduce(AtExprs:AtExpr)} - assuming the former because we prefer shift when unable to compare precedences
        time: 00:00:00.1377174
        building goto table...        time: 00:00:00.0008946
        returning tables.
        57 shift/reduce conflicts
        consider setting precedences explicitly using %left %right and %nonassoc on terminals and/or setting explicit precedence on rules using %prec
        66 states
        8 nonterminals
        31 terminals
        32 productions
        #rows in action table: 66
compiling to dfas (can take a while...)
34 states
writing output

Microsoft (R) F# Interactive version 12.0.0.0 for F# 6.0
Copyright (c) Microsoft Corporation. All Rights Reserved.

For help type #help;;

[Loading C:\Users\deniz\OneDrive\Dokumenter\GitHub\PRDAT-Assignments-REAL\PRDAT-Assignments\Fun\Absyn.fs
 Loading C:\Users\deniz\OneDrive\Dokumenter\GitHub\PRDAT-Assignments-REAL\PRDAT-Assignments\Fun\FunPar.fs
 Loading C:\Users\deniz\OneDrive\Dokumenter\GitHub\PRDAT-Assignments-REAL\PRDAT-Assignments\Fun\FunLex.fs
 Loading C:\Users\deniz\OneDrive\Dokumenter\GitHub\PRDAT-Assignments-REAL\PRDAT-Assignments\Fun\Parse.fs
 Loading C:\Users\deniz\OneDrive\Dokumenter\GitHub\PRDAT-Assignments-REAL\PRDAT-Assignments\Fun\Fun.fs
 Loading C:\Users\deniz\OneDrive\Dokumenter\GitHub\PRDAT-Assignments-REAL\PRDAT-Assignments\Fun\ParseAndRun.fs]


FunLex.fsl(42,51): info FS3370: The use of ':=' from the F# library is deprecated. See https://aka.ms/fsharp-refcell-ops. For example, please change 'cell := expr' to 'cell.Value <- expr'.



FunLex.fsl(43,51): info FS3370: The use of ':=' from the F# library is deprecated. See https://aka.ms/fsharp-refcell-ops. For example, please change 'cell := expr' to 'cell.Value <- expr'.



FunLex.fsl(64,51): info FS3370: The use of ':=' from the F# library is deprecated. See https://aka.ms/fsharp-refcell-ops. For example, please change 'cell := expr' to 'cell.Value <- expr'.



FunLex.fsl(64,54): info FS3370: The use of '!' from the F# library is deprecated. See https://aka.ms/fsharp-refcell-ops. For example, please change '!cell' to 'cell.Value'.



FunLex.fsl(65,41): info FS3370: The use of '!' from the F# library is deprecated. See https://aka.ms/fsharp-refcell-ops. For example, please change '!cell' to 'cell.Value'.



FunLex.fsl(68,51): info FS3370: The use of ':=' from the F# library is deprecated. See https://aka.ms/fsharp-refcell-ops. For example, please change 'cell := expr' to 'cell.Value <- expr'.



FunLex.fsl(68,54): info FS3370: The use of '!' from the F# library is deprecated. See https://aka.ms/fsharp-refcell-ops. For example, please change '!cell' to 'cell.Value'.

Binding session to 'C:\Users\deniz\OneDrive\Dokumenter\GitHub\PRDAT-Assignments-REAL\PRDAT-Assignments\Fun\../fsharp/FsLexYacc.Runtime.dll'...
namespace FSI_0002
  type expr =
    | CstI of int
    | CstB of bool
    | Var of string
    | Let of string * expr * expr
    | Prim of string * expr * expr
    | If of expr * expr * expr
    | Letfun of string * string list * expr * expr
    | Call of expr * expr list

namespace FSI_0002
  type token =
    | EOF
    | LPAR
    | RPAR
    | EQ
    | NE
    | GT
    | LT
    | GE
    | LE
    | AND
    | OR
    | PLUS
    | MINUS
    | TIMES
    | DIV
    | MOD
    | ELSE
    | END
    | FALSE
    | IF
    | IN
    | LET
    | NOT
    | THEN
    | TRUE
    | CSTBOOL of bool
    | NAME of string
    | CSTINT of int
  type tokenId =
    | TOKEN_EOF
    | TOKEN_LPAR
    | TOKEN_RPAR
    | TOKEN_EQ
    | TOKEN_NE
    | TOKEN_GT
    | TOKEN_LT
    | TOKEN_GE
    | TOKEN_LE
    | TOKEN_AND
    | TOKEN_OR
    | TOKEN_PLUS
    | TOKEN_MINUS
    | TOKEN_TIMES
    | TOKEN_DIV
    | TOKEN_MOD
    | TOKEN_ELSE
    | TOKEN_END
    | TOKEN_FALSE
    | TOKEN_IF
    | TOKEN_IN
    | TOKEN_LET
    | TOKEN_NOT
    | TOKEN_THEN
    | TOKEN_TRUE
    | TOKEN_CSTBOOL
    | TOKEN_NAME
    | TOKEN_CSTINT
    | TOKEN_end_of_input
    | TOKEN_error
  type nonTerminalId =
    | NONTERM__startMain
    | NONTERM_Main
    | NONTERM_Expr
    | NONTERM_AtExpr
    | NONTERM_Names
    | NONTERM_AppExpr
    | NONTERM_AtExprs
    | NONTERM_Const
  val tagOfToken: t: token -> int
  val tokenTagToTokenId: tokenIdx: int -> tokenId
  val prodIdxToNonTerminal: prodIdx: int -> nonTerminalId
  val _fsyacc_endOfInputTag: int
  val _fsyacc_tagOfErrorTerminal: int
  val token_to_string: t: token -> string
  val _fsyacc_dataOfToken: t: token -> System.Object
  val _fsyacc_gotos: uint16[]
  val _fsyacc_sparseGotoTableRowOffsets: uint16[]
  val _fsyacc_stateToProdIdxsTableElements: uint16[]
  val _fsyacc_stateToProdIdxsTableRowOffsets: uint16[]
  val _fsyacc_action_rows: int
  val _fsyacc_actionTableElements: uint16[]
  val _fsyacc_actionTableRowOffsets: uint16[]
  val _fsyacc_reductionSymbolCounts: uint16[]
  val _fsyacc_productionToNonTerminalTable: uint16[]
  val _fsyacc_immediateActions: uint16[]
  val _fsyacc_reductions: unit -> (FSharp.Text.Parsing.IParseState -> obj)[]
  val tables: unit -> FSharp.Text.Parsing.Tables<token>
  val engine:
    lexer: (FSharp.Text.Lexing.LexBuffer<'a> -> token)
    -> lexbuf: FSharp.Text.Lexing.LexBuffer<'a> -> startState: int -> obj
  val Main:
    lexer: (FSharp.Text.Lexing.LexBuffer<'a> -> token)
    -> lexbuf: FSharp.Text.Lexing.LexBuffer<'a> -> Absyn.expr

namespace FSI_0002
  val lexemeAsString: lexbuf: FSharp.Text.Lexing.LexBuffer<char> -> string
  val commentStart: FSharp.Text.Lexing.Position ref
  val commentDepth: int ref
  val keyword: s: string -> FunPar.token
  val trans: uint16[] array
  val actions: uint16[]
  val _fslex_tables: FSharp.Text.Lexing.UnicodeTables
  val _fslex_dummy: unit -> 'a
  val Token: lexbuf: FSharp.Text.Lexing.LexBuffer<char> -> FunPar.token
  val SkipComment: lexbuf: FSharp.Text.Lexing.LexBuffer<char> -> unit

namespace FSI_0002
  val fromString: str: string -> Absyn.expr
  val fromFile: filename: string -> Absyn.expr
  val e1: Absyn.expr
  val e2: Absyn.expr
  val ex1: Absyn.expr
  val ex2: Absyn.expr
  val ex3: Absyn.expr
  val ex4: Absyn.expr
  val ex5: Absyn.expr

namespace FSI_0002
  type 'v env = (string * 'v) list
  val lookup: env: (string * 'a) list -> x: string -> 'a
  type value =
    | Int of int
    | Closure of string * string list * Absyn.expr * value env
  val eval: e: Absyn.expr -> env: value env -> int
  val run: e: Absyn.expr -> int

namespace FSI_0002
  val fromString: (string -> Absyn.expr)
  val eval: (Absyn.expr -> Fun.value Fun.env -> int)
  val run: e: Absyn.expr -> int

> open ParseAndRun;;
```

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

Running all that will give this:
```fsharp
> run (fromString "let sum n = if n = 0 then 0 else n + sum (n-1) in sum 1000 end");;
val it: int = 500500

> run (fromString "let pow exp = if exp = 1 then 3 else 3 * (pow (exp-1)) in pow 8 end");;
val it: int = 6561

> run (fromString "let pow exp = if exp = 1 then 3 else 3 * (pow (exp-1)) in let bing exp = if exp = 0 t hen 1 else (pow exp) + bing (exp-1) in bing 11 end end");;
val it: int = 265720

> run (fromString "let pow8 x = x * x * x * x * x * x * x * x in let bing n = if n = 1 then 1 else pow8
  n + bing (n-1) in bing 10 end end");;
val it: int = 167731333
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

