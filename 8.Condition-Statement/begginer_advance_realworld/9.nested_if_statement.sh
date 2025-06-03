#!/bin/bash

read -p "Enter username: " user
read -s -p "Enter password: " password

if [[ "$user" == "admin" ]]; then
	if [[ "$password" == "secret" ]]; then
		echo "Access granted"
	else
		echo "Wrong Password"
	fi
else
	echo "Unknown user "
fi
