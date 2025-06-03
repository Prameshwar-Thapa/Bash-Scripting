#!/bin/bash

echo "1. Show date"
echo "2. Show uptime"
echo "3. Show users"
echo "4. Exit"

read -p "choose an option: " choice

case "$choice" in
	1) date ;;
	2) uptime ;;
	3) who ;;
	4) echo "Good bye!"; exit ;;
	*) echo "Invalid option" ;;
esac
