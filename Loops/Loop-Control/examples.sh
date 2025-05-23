#!/bin/bash

# Example 1. Break at 3

for i in {1..5}
do 
    [ $i -eq 3 ] && break
    echo "i=$i"
done

# Example 2. With Continue
for i in {1..5}
do
    [ $i -eq 3 ] && continue
    echo "i=$i"
done

# Example 3. Break while Loop
count=0
while true
do
    ((count++))
    echo "Looping...."
    [ $count -eq 3 ] && break

done 

# Example 4. Continue inside while
i=0
while [ $i -lt 5 ]
do 
    ((i++))
    [ $i -eq 3 ] && continue
    echo "i=$i"
done 

# Example 5. Nested Break

for i in 1 2 3
do 
    for j in a b c
    do 
        [ "$j" = "b" ] && break
        echo "$i $j"
    done
done 