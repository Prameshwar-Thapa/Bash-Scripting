#!/bin/bash

show_date() {
	date
}
show_file() {
	ls -lah
}
show_current_directory() {
	pwd
}

while true
do
	echo "1. Show Date"
	echo "2. List Files"
	echo "3. Show current directory"
	echo "4. Exit"
	read -rp "Choose an option: " opt

	case $opt in
		1) show_date ;;
		2) show_file ;;
		3) show_current_directory ;;
		4) exit 0 ;;
		*) echo "Invalid option" ;;
	esac
done

