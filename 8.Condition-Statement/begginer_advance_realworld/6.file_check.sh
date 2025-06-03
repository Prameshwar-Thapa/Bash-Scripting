#!/bin/bash

file="/etc/passwd"

if [[ -f "$file" ]]; then
	echo " File is a regular file"
elif
	[[ -d "$file" ]]; then
	echo " File is a directory"
else
	echo "File does not exist"
fi
