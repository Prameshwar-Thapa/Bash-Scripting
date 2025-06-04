#!/bin/bash

while IFS=',' read -r name email;do
	echo "Name:$name | Email: $email"
done < users.csv
