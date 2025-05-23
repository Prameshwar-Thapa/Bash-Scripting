#!/bin/bash

# Example 1
name="Alice"
if [ "$name" = "Alice" ]; then
    echo "Hello Alice"
fi

# Example 2

str=""
if [ -z "$str" ]; then
    echo "String is empty"
fi

# Example 3
str="Hello"
if [ -n "$str" ]; then
    echo "String is not empty"
fi

# Example 4

word1="apple"
word2="banana"

if [ "$word1" \< "$word2" ]; then 
    echo "$word1 comes before $word2"
fi