fsyacc --module FunPar FunPar.fsy
fslex --unicode FunLex.fsl
dotnet fsi -r ../fsharp/FsLexYacc.Runtime.dll Absyn.fs FunPar.fs FunLex.fs Parse.fs HigherFun.fs ParseAndRunHigher.fs

#open ParseAndRunHigher;;