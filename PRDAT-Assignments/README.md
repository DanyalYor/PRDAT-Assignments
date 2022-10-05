# Assignment 3
3.3  
let z = (17) in z + 2 * 3 end EOF  
(let z = (17) in z + 2 * 3 end) (by rule A on the right most variable)  
(let z = (17) in z + 2 * (CSTINT 3)) (by rule C on the right most variable)  
(let z = (17) in z + 2 TIMES (CSTINT 3)) (by rule G on the right most variable)  
(let z = (17) in z + (CSTINT 2) TIMES (CSTINT 3)) (by rule C on the right most variable)  
(let z = (17) in z PLUS ((CSTINT 2) TIMES (CSTINT 3))) (by rule H on the right most variable)  
(let z = (17) in ((NAME z) PLUS ((CSTINT 2) TIMES (CSTINT 3)))) (by rule B on the right most variable)  
(let z = (LPAR (CSTINT 17) RPAR) in ((NAME z) PLUS ((CSTINT 2) TIMES (CSTINT 3)))) (by rule E on the right most variable)  
(LET (NAME z) EQ (LPAR (CSTINT 17) RPAR) IN ((NAME z) PLUS ((CSTINT 2) TIMES (CSTINT 3)))) (by rule F on the right most variable)  

3.4  
3-4 image.png

3.5  
In the Expr directory the following commands:  
fslex --unicode ExprLex.fsl  
fsyacc --module ExprPar ExprPar.fsy  
fsharpi -r ~/fsharp/FsLexYacc.Runtime.dll Absyn.fs ExprPar.fs ExprLex.fs Parse.fs  

Outputs when running the commands:
Open Parse;;

fromString "1 + 2 * 3";; =
val it : Absyn.expr = Prim ("+", CstI 1, Prim ("*", CstI 2, CstI 3))

fromString "1 - 2 - 3";; = 
val it : Absyn.expr = Prim ("-", Prim ("-", CstI 1, CstI 2), CstI 3)

fromString "1 + -2";; =
val it : Absyn.expr = Prim ("+", CstI 1, CstI -2)

fromString "x++";; =
System.Exception: parse error near line 1, column 3 ...

fromString "1 + 1.2";; =
System.Exception: Lexer error: illegal symbol near line 1, column 6

fromString "1 + ";; =
System.Exception: parse error near line 1, column 4 ...

fromString "let z = (17) in z + 2 * 3 end";; =
val it : Absyn.expr =
  Let ("z", CstI 17, Prim ("+", Var "z", Prim ("*", CstI 2, CstI 3)))

fromString "let z = 17) in z + 2 * 3 end";; =
System.Exception: parse error near line 1, column 11 ...

fromString "let in = (17) in z + 2 * 3 end";; =
System.Exception: parse error near line 1, column 6 ...

fromString "1 + let x=5 in let y=7+x in y+y end + x end";; = 
val it : Absyn.expr =
  Prim
    ("+", CstI 1,
     Let
       ("x", CstI 5,
        Prim
          ("+",
           Let
             ("y", Prim ("+", CstI 7, Var "x"), Prim ("+", Var "y", Var "y")),
           Var "x")))

3.6  
Expr.fs - line 319.

3.7  
Absyn.fs - line 12
ExprLex.fsl - line 22-24
ExprPar.fsy - line 14-16 & line 40