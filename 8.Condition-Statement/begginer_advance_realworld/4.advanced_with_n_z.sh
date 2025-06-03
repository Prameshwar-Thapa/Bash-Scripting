#!/bin/bash

input="$1"

if [ -z "$input" ]; then
	echo "Input is empty"
elif [ -n "$input" ]; then
	echo "You entered : $input"
fi
