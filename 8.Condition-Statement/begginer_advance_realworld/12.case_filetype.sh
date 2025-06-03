#!/bin/bash

filetype="$1"

case "$filetype" in
	*.sh) echo "Shell Script file" ;;
	*.txt) echo "Text file" ;;
	*.log) echo "Log file" ;;
	*) echo "Unknown file type" ;;
esac

