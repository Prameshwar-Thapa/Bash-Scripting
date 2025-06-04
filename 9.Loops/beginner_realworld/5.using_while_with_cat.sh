#!/bin/bash

cat names.txt | while read -r name; do
	echo "User:$name"
done
