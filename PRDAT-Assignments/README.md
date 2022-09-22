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

3.6  
Expr.fs - line 319.

3.7  
Absyn.fs - line 12
ExprLex.fsl - line 22-24
ExprPar.fsy - line 14-16 & line 40