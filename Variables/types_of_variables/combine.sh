#!/bin/bash

# cm: USER-DEFINED
user="pramesh"
course="Bash Scripting"
echo "Hello, $user! Welcome to $course tutorial."

# cm: SYSTEM-DEFINED
echo "You are logged in as: $USER"
echo "Your home directory is: $HOME"

# cm: SPECIAL VARIABLES
echo "Script: $0"
echo "Number of arguments: $#"
echo "Arguments: $@"
echo "Script PID: $$"
