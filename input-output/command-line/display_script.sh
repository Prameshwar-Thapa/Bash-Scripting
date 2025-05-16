#!/bin/bash
# show_script_details.sh

echo "Script Name: $0"
echo "Total Arguments: $#"

for arg in "$@"
do
    echo "Argument: $arg"
done
