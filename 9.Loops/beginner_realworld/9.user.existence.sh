#!/bin/bash

while read -r user; do
	if id "$user" &>/dev/null; then
		echo "$user exist"
	else
		echo "$user not found"
	fi
done < user_list.txt
