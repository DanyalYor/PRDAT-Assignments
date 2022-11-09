# Assignment 9.1
Please see the following files, which have had comments added comments to the right of the bytecode instruction:
- `Selsort.il`
- `Selsort.jvmbytecode`

# Assignment 9.2
csc /o StringConcatSpeed.cs produced the file StringConcatSpeed.exe file.   
   
For a picture of our quantitative obeservation please check the following file: `quantitative_observations_92.png`   
As we can see in the picture when we press enter in the program, the time in gc (garbage collector) jumps to ~70 percent (the blue vertical line) which, as described in the exercise description is a very high percentage and a sign that the program is "written in a sick way"   
   
For the other long running C# program to benchmark we chose to go with the file `Selsort.cs`.   
We started by first compiling the file with `csc /o Selsort.cs` which produced `Selsort.exe` and then we ran the program while checking the gc performance in the permon window. If we take a look at the result in the file: `quantitative_obsercations_93.png`, we see that the time spent was 0% which fits with the expected 0-10 percent as written in the book.