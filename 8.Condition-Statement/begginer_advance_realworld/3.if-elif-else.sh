#!/bin/bash

read -p "Enter your role: " role

if [ "$role" = "admin" ]; then
	echo "Admin access"
elif [ "$role" = "user" ]; then
	echo " User access"
else
	echo "Access denied"
fi
