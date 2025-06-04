#!/bin/bash

while read -r line; do
	echo "Name: $line"
done < new.txt

