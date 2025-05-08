#!/usr/bin/bash

# read_silent.sh
# Using -s option to hide the input (useful for passwords).

read -sp "Enter your secret password:" password
echo

echo "Password was entered successfully(but hidden during typing). "