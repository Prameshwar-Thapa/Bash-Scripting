#!/bin/bash

# Example 1. Using Numbers

for i in 1 2 3 4 5
do 
    echo "Numbers: $i"
done

# Example 2.  Using Brace Expansions
for i in {1..30}
do 
    echo "Numbers: $i"
done

# Example 3. over words
for word in red green yello
do 
    echo "Words: $word"
done 

# Example 4. over Array
declare -a colors=("red" "green" "brown")
for color in "${colors[@]}"
do 
    echo "colors:$color"
done

# Example 5. C-style loop

for (( i=1; i<=5; i++ ))
do 
    echo "i=$i"
done 