#!/bin/bash

# Example 1
number=5

if [[ $number -eq 5 ]]; then
    echo "Both are equal"
else
    echo "Not equal"
fi

# Same example in different method

[ 5 -eq 5 ] && echo "Equal"

# Example 2

num=7

if [[ $num -gt 3 ]]; then
    echo "Number is greater than 3"
else 
    echo "Number is smaller than 3 "
fi

# Same example in different method
[ 7 -gt 3 ] && echo "Number is great"