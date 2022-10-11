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
