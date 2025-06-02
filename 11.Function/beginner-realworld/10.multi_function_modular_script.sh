#!/bin/bash

backup_home() {
	tar -czf /tmp/home_backup.tar.gz /home/$USER
	echo "Backup Complete"
}

show_disk_usage() {
	df -h
}

main() {
	backup_home
	show_disk_usage
}
main
