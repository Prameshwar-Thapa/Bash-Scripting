#!/bin/bash

if [ "$EUID" -ne 0 ]; then
	echo " You must run this script as root"
	exit 1
else
	echo " Script is running with root privileges."
fi
