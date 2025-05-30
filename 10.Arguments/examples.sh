#!/bin/bash

# # Example 1. Simple Gretting Script
# echo "Hello, $1!"

# Example 2. Checking Number of Arguments
# if [ $# -ne 2 ]; then
#     echo " Error: you need to provide exactly two arguments"
#     echo "Usage: $0 arg1  arg2"
#     exit 1
# fi
# echo " First argument: $1"
# echo "Second argument: $2"

# Example 3. Looping through all arguments
#  echo " You passed $# arguments."

#  for arg in "$@"
#  do
#     echo "Arguments:$arg"
# done

# Example 4. Combine All arguments as Single String
# echo "Using \"\$*\":"
# echo "$*"             
# echo

# echo "Using \"\$@\":"
# for arg in "$@"
# do
#     echo "$arg"    
# done

# Example 5. Using Arguments for Conditional Logic
if [ -z "$1" ]; then            
  echo "Please provide a filename as an argument."
  exit 1
fi

if [ -f "$1" ]; then             
  echo "File '$1' exists."
else
  echo "File '$1' does not exist."
fi