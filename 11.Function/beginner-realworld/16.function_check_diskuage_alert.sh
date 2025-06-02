#!/bin/bash
check_usage() {
	local usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
	if (( usage > 80)); then
		echo "Disk usage is at ${usage}%, consider cleaning up!"
	else
		echo "Disk usage is at ${usage}%, all good"
	fi
}
check_usage
