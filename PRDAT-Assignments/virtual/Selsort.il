		default void SelectionSort (int32[] arr)  cil managed 
{
	// Method begins at RVA 0x20b4
// Code size 57 (0x39)
.maxstack 4 //maximum size of stack = 4
.locals init (
	int32	V_0,
	int32	V_1,
	int32	V_2,
	int32	V_3) 
//load 4 local variables to the stack which 
//are then used when pushing and storing constants.

IL_0000:  ldc.i4.0 //push int constant 0
IL_0001:  stloc.0  //store local variable 0
IL_0002:  br.s IL_0032 //unconditional jump to line 32

IL_0004:  ldloc.0 //load local variable 0
IL_0005:  stloc.1 //store local variable 1
IL_0006:  ldloc.0 //load local variable 0
IL_0007:  ldc.i4.1 //push int constant 1
IL_0008:  add //arithmetic operation add
IL_0009:  stloc.3 //store local variable 3
IL_000a:  br.s IL_001a //unconditional jump to line 1a

IL_000c:  ldarg.0 //load local variable 0
IL_000d:  ldloc.3 //load local variable 3
IL_000e:  ldelem.i4 //load array element int
IL_000f:  ldarg.0 //load local variable 0
IL_0010:  ldloc.1 //load local variable 1
IL_0011:  ldelem.i4 //load array element int
IL_0012:  bge.s IL_0016 //conditional jump to line 16

IL_0014:  ldloc.3 //load local variable 3
IL_0015:  stloc.1 //store local variable 1
IL_0016:  ldloc.3 //load local variable 3
IL_0017:  ldc.i4.1 //push int constant 1
IL_0018:  add //arithmetic operation add
IL_0019:  stloc.3 //store local variable 3
IL_001a:  ldloc.3 //load local variable 3
IL_001b:  ldarg.0 //load local variable 0
IL_001c:  ldlen //push the length of array on the stack
IL_001d:  conv.i4 //convert to native int and pushing native int on stack
IL_001e:  blt.s IL_000c //conditional jump to line 0c

IL_0020:  ldarg.0 //load local variable 0
IL_0021:  ldloc.0 //load local variable 0
IL_0022:  ldelem.i4 //load array element int
IL_0023:  stloc.2 //store local variable 2
IL_0024:  ldarg.0 //load local variable 0
IL_0025:  ldloc.0 //load local variable 0
IL_0026:  ldarg.0 //load local variable 0
IL_0027:  ldloc.1 //load local variable 1
IL_0028:  ldelem.i4 //load array element int
IL_0029:  stelem.i4 //replace array element at index
IL_002a:  ldarg.0 //load local variable 0
IL_002b:  ldloc.1 //load local variable 1
IL_002c:  ldloc.2 //load local variable 2
IL_002d:  stelem.i4 //replace array element at index
IL_002e:  ldloc.0 //load local variable 0
IL_002f:  ldc.i4.1 //push constant int 1
IL_0030:  add //arithmetic operation add
IL_0031:  stloc.0 //store local variable 0
IL_0032:  ldloc.0 //load local variable 0
IL_0033:  ldarg.0 //load local variable 0
IL_0034:  ldlen //push the length of array on the stack
IL_0035:  conv.i4 //convert to native int and pushing native int on stack
IL_0036:  blt.s IL_0004 //conditional jump to line 04

IL_0038:  ret //method return
} // end of method Selsort::SelectionSort