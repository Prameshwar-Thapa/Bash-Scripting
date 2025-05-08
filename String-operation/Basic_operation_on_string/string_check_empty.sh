#!/usr/bin/bash

str1=""
str2="Hello"

# Check if str1 is empty

if [ -z "$str1" ]; then
    echo "str1 is empty"
fi

# Check if str2 is not empty
if [ -n "$str2" ]; then
    echo "str2 is not empty."
fi