## Assignment 5.1

### A)

This is our F# implementation of the `merge` function:

```fsharp
let rec merge (pair: int list * int list) : int list =
    match pair with
    | [], [] -> []
    | [], ys -> ys
    | xs, [] -> xs
    | x::xs, y::ys -> if x < y then x :: merge (xs, (y::ys)) else y :: merge ((x::xs), ys)
    
printfn "%A" (merge ([3;5;12], [2;3;4;7]))
```

Running the above code will print this:

```
[2; 3; 3; 4; 5; 7; 12]
```

### B)

This is our Java implementation of the `merge` function:

```java
import java.util.Arrays;

public class Assignment5_1 {
    public static void main(String[] args) {
        System.out.println(
            Arrays.toString(merge(new int[] {3, 5, 12}, new int[] {2, 3, 4, 7}))
        );
    }

    public static int[] merge(int[] xs, int[] ys) {
        int[] result = new int[xs.length + ys.length];

        int i = 0, j = 0, k= 0;

        while (i < xs.length && j < ys.length) {
            if (xs[i] < ys[j]) {
                result[k] = xs[i];
                i++;
            } 
            else {
                result[k] = ys[j];
                j++;
            }
            k++;
        }

        while (i < xs.length) {
            result[k] = xs[i];
            i++;
            k++;
        }

        while (j < ys.length) {
            result[k] = ys[j];
            j++;
            k++;
        }

        return result;
    }
}
```

Running the above will print:

```
[2, 3, 3, 4, 5, 7, 12]
```

## Assignment 5.7

We started by adding a new type instance to the 'typ' type called 'TypL'.
```fsharp
    | TypL of typ                         (* list, element type is typ  *)
```  
We then updated the necessary functions to also take the new type instance into consideration.  

## Assignment 6.1

We have downloaded the required files and included them in the submission.

1. Running the first program using `fromString` and `eval`:

    ```fsharp
    let add x = let f y = x+y in f end
    in add 2 5 end
    ```

    Returns:

    ```fsharp
    val it: HigherFun.value = Int 7
    ```

2. Running the second program using `fromString` and `eval`:

    ```fsharp
    let add x = let f y = x+y in f end in let addtwo = add 2 in addtwo 5 end end
    ```

    Returns:

    ```fsharp
    val it: HigherFun.value = Int 7
    ```

3. Running the third program using `fromString` and `eval`:

    ```fsharp
    let add x = let f y = x+y in f end in let addtwo = add 2 in let x = 77 in addtwo 5 end end end
    ```

    Returns:

    ```fsharp
    val it: HigherFun.value = Int 7
    ```

    **Question**: Is the result of this expected? <br/>
    **Answer**: Yes, because if we take a look at the add function we can see that it leads to another
    function which takes the parameter 'y', so it essentially expects 2 parameters in order to not utilize partial
    application. Another function called addTwo is then initialized, which calls the add function with 1 parameter (an int).
    We then see an 'x' variable being initialized, but not used. At last there is a call to addTwo with the integer 5 and if
    we take a look at what the add function does, we can see that the 5 will be "propagated" forward until finally being added to 2
    which results in 7.

4. Running the fourth program using `fromString` and `eval`:

    ```fsharp
    let add x = let f y = x+y in f end in add 2 end
    ```

    Returns:

    ```fsharp
    val it: HigherFun.value =
        Closure
            ("f", "y", Prim ("+", Var "x", Var "y"),
            [("x", Int 2);
            ("add",
            Closure
                ("add", "x", Letfun ("f", "y", Prim ("+", Var "x", Var "y"), Var "f"),
                []))])
    ```

    **Explaination**: <br/>
    We can this because ...

## 6.2
We added a `Fun` type to `Fun.fs` and added that
```fsharp
> fromString "fun x -> 2*x";;
val it: Absyn.expr = Fun ("x", Prim ("*", CstI 2, Var "x"))

> fromString "let y = 22 in fun z -> z+y end";;
val it: Absyn.expr =
  Let ("y", CstI 22, Fun ("z", Prim ("+", Var "z", Var "y")))
```

## 6.3
We have edited the files as mentioned in the assignment to permit the anonymous functions. These changes can be found on:
```
FunLex.fsl: Line 33, 47
FunPar.fsy: Line 14, 21, 62

Running the two functions explained:

```fsharp
let add x = fun y -> x+y in add 2 5 end
let add = fun x -> fun y -> x+y in add 2 5 end
```

Returns:

```fsharp
val it: HigherFun.value = Int 7
val it: HigherFun.value = Int 7
```

As such, this assignment is now complete and our program now supports anonymous functions!
