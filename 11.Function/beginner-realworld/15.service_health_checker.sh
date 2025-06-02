#!/bin/bash

check_service() {
	local service="$1"

	if systemctl is-active --quiet "$service"; then
		echo "$service is running."
	else
		echo "$service is not running. Restarting..."
		systemctl restart "$service"
	fi
}
main(){
	for svc in cron docker python; do
		check_service "$svc"
	done
}

