#!/usr/bin/bash
# Special Bash Variables

echo "Script Name: $0"          # name of the script
echo "First Argument: $1"       # First Positon parameter
echo "Second Argument: $2"      # Second postion parameter
echo "Total Argument: $#"       # Number of arguments parameter
echo "All Argument: $@"         # List of all arguments
echo "PID of scripts: $$"       # Process ID of the scripts
echo "Exit status of last command: $?"      # exit cod of last run command

# Example to check exit status
ls /nonexistent_folder > /dev/null 2>&1
echo "Exit status after failed command: $?"