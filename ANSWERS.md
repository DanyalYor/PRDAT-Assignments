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
    **Answer**: Yes, because ...

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
