#!/bin/bash


while IFS=',' read -r username password; do
	useradd -m "$username"
	echo "$username:$password" | chpasswd
	echo "User $username created"
done < users.csv
