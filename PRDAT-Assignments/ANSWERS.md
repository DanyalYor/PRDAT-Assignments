# Assignment 9
`10.1.1`     

`ADD:`

We start by assigning the second to last element in the stack to the following:

1. We untag the second to last in the stack element, by bit shifting to the right by 1
2. Then we add that to the result of the untagged last element in the stack
3. Then we tag the result of the addition above by bitshifting to the left by 1 and running OR with the result of the bitshifting and 1
4. Now that this has been assigned to the second to last element in the stack as mentioned above, we decrement the stack pointer.

`CSTI:`

We start by assigning the first element in the stack to the following:

1. We tag the value of the CSTI instruction in the program by incrementing the PC and fetching the element at that index from p
2. We then increment the stack pointer.

`NIL:`

1. It essentially does the same as CSTI by pushing an element to the bottom of the stack.
2. The difference between the 2 is that CSTI fetches the value from the program.
3. We then increment the stack pointer.

`IFZERO:`

1. We start by initialising a word v to the element in our stack at the index sp--
2. We then check if the v value is an int
3. If the value is an int then we untag v and check if it equals 0 else we just check if v equals 0
4. if v equals 0 we proceed with setting pc to the next instruction in our program else we skip that instruction.

`CONS:`

Allocates a two word block onto the program heap and adds a reference to it in the stack.

`CAR:`

We check if the last value is null otherwise we set the top of the stack to the second value in the program

`SETCAR:`

1. We take the second to last element in the stack and save it as v
2. We the take the last element in the stack and save it as p
3. We then save v as the second element in p.