#!/bin/bash

mkdir -p /backup

for file in /etc/*.conf; do
	cp "$file" /backup/
	echo "Backed up $file"
done
