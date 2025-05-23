#!/bin/bash

# Example 1
if [ -e "test.txt" ]; then
    echo "File exists"
else
    echo "File doesn't exists"
fi

# Example 2

if [ -d "/test" ]; then
    echo "Directory exists"
else
    echo "Directory doesn't exists"
fi 

# Example 3

if [ -x "scripts.sh" ]; then 
    echo " File exists"
else
    echo "File doesn't exists"
fi