# Assignment 9

## Exercise 10.1.1

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

## Exercise 10.1.2

We have the block header `ttttttttnnnnnnnnnnnnnnnnnnnnnngg`, that's a 32 bit word.

Explanation for each character:

- `t`: is the block tag
- `n` is the block length
- `g` is the GC color

Applying:

- **Length:** Length takes in a header, and returns the length of the word block in that header.

  It does this in the following steps:
  1. First it shifts the 2 bits at the right end away by using the `>>` operator - these are the bits representing the color.
  2. It then uses AND (`&`) with the `0x003FFFFF` value. Doing all this, returns the length of the word block.

- **Color:** Color takes in a header, and returns the color of the header, which is an integer between 0-3, each representing a color.

  It does this in the following steps:
  1. It simply uses AND (`&`) 3 on the header.
  2. This will make it return a number between 0-3.

- **Paint:** Paint takes in two parameters, the header and the new color. It then returns a copy of the header word, with the color we specified.

  It does this in the following steps:
  1. First we use NEGATE (`~`) on the integer value 3.
  2. Then we use AND (`&`) on the header with the result from step 1.
  3. Then we simply OR (`|`) the result from step 2 with the color.

## Exercise 10.1.3

If we take a look at the code in `listmachine.c` we see that the only place where `allocate()` is being utilised is within the `CONS` instruction.

## Exercise 10.1.4

If we, once again, take a look at the code in `listmachine.c` we see that the garbage collector's `collect()` method is being called when we are allocating, but there is no free space, so we do a garbage collection, by running `collect()`.

## Exercise 10.2 & 10.3

Our solution to these two assignments can be foudn in the `listmachine.c` file. Running these commands works perfectly with our solution:

```fsharp
listmachine ex30.out 1000
listmachine ex30.out 10000
listmachine ex30.out 100000
```

Solution for 10.3 specifically can be found on line **498**.
