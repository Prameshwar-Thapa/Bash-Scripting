#!/bin/bash
# string_comparison.sh
# Demonstrates string comparison in Bash

str1="Hello"
str2="Hello"
str3="World"

if [[ "$str1" == "$str2" ]]; then
    echo "str1 and str2 are equal."
else
    echo "str1 and str2 are not equal."
fi

if [[ "$str1" != "$str3" ]]; then
    echo "str1 and str3 are not equal."
fi
