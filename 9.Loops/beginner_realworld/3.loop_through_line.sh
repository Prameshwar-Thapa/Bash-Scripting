#!/bin/bash

count=0
while read -r line; do
	((count++))
done < /etc/passwd

echo "Total lines: $count"
