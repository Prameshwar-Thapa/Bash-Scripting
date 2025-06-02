#!/bin/bash

log_message() {
	echo "$(date): $1" >> "$HOME/myscript.log"
}
log_message "Script started"
log_message "Backup completed"
