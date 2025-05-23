#!/bin/bash

# Example 1
[ 5 -gt 2 ] && [ 8 -gt 4 ] && echo "Both are true"

# Example 2

[ "$USER" = "root" ] || echo "You are not root"

# Example 3

file=data.txt

if ! [ -f "$file " ]; then
    echo "$file does not exist"
fi 