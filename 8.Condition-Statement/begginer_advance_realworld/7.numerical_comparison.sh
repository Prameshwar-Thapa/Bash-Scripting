#!/bin/bash

read -p "Enter first number : " a
read -p "Enter second number " b

if [[ "$a" -lt "$b" ]]; then
	echo "B is greater than A"
else
	echo "A is greater than B"
fi
