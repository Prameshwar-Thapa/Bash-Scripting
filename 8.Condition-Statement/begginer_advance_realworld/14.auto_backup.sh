#!/bin/bash

DIR="/etc"

if [ -d "$DIR" ]; then
	cp -r "$DIR" "/tmp/etc_backup_(date +%F_%H-%M-%S)"
	echo "Backup of $DIR completed"
else
	echo " Directory $DIR doesnot exit. Backup aborted"
fi
