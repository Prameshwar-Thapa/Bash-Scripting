#!/usr/bin/bash

# basic_read.sh
# Basic usage of the read command without specifying any variable.
# The input is stored in the special variable REPLY.

echo "Please type something and press enter: "
read
echo "You entered : $REPLY"
