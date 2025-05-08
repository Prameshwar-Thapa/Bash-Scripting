#!/bin/bash
# read_timeout.sh
# Using -t option to set a timeout for user input.
# If the user does not enter anything within 5 seconds, read will fail.

read -t 5 -p "Enter your username (you have 5 seconds): " username
if [ $? -eq 0 ]; then
    echo "Hello, $username!"
else
    echo "Timed out! No input received."
fi
