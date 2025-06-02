#!/bin/bash

log_and_exit() {
	echo "$(date): $1" >> /tmp/error.log
	exit 1
}

[[ ! -f /etc/passwd ]] && log_and_exit "/etc/passed not found"
echo "All checks passed."
