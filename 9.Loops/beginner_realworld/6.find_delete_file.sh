#!/bin/bash

find /var/log -name "*.log" -type f -mtime +30 | while read -r logfile; do
		echo "Deleting $logfile"
		rm "$logfile"
	done

