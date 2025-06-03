#!/bin/bash

read -p "Enter option [start|stop|restart]: " action

case "$action" in
	start|START) echo "Starting service ..." ;;
	stop|STOP) "stopping service..." ;;
	restart|RESTART) echo "Restarting service ... " ;;
	*) echo "Invalid option " ;;
esac
