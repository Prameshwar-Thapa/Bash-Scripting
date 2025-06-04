#!/bin/bash

# Example 1. Simple counter

i=1

while [ $i -le 5 ]
do
    echo "Counter :$i"
    ((i++))
done

# Example 2. Read file line-by-line

while read line
do
    echo "Line: $line"
done < input.txt

# Example 3. Wait for a file

# while [ ! -f "ready.txt" ]
# do 
#     echo "waiting...."
#     sleep 1 # Running after after 1 seconds
# done

# Example 4. User Input
while true
do 
    read -p "continue(yes/no)?:" answer
    [ "$answer" = "no" ] && break   
done

# Example 5. Countdown

count=5
while [ "$count" -gt 0 ]
do
    echo "$count"
    (( count-- ))
done