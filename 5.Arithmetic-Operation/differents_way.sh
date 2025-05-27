#!/bin/bash

# Arithmetic Expansion

a=5; b=2

echo "Sum using arithmetic expansion: $(( a + b ))"

# Using Let command

let sum=a+b
echo "Sum using let: $sum"

# Expr Command
sum=$(expr $a + $b)
echo "Sum using expr: $sum"