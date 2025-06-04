#!/bin/bash

while true; do
	if ! systemctl is-active --quiet nginx; then
		echo "Nginx is down! Restarting..."
		systemctl restart nginx
	fi
	sleep 30
done
