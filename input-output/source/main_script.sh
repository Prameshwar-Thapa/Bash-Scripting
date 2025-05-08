#!/bin/bash
# main_script.sh
# Script to load user details from another file using 'source'

# Check if file exists
if [ -f user_input.sh ]; then
    source user_input.sh
    echo "First Name: $first_name"
    echo "Last Name: $last_name"
    echo "Email: $email"
else
    echo "Error: user_input.sh not found!"
    exit 1
fi
