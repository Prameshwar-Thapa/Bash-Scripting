#!/bin/bash

# Example 1. Count is 5
i=1

until [ "$i" -gt 5 ]
do
    echo "i=$i"
    (( i++ ))
done

# Example 2. Wait for file
until [ -f "done.txt" ]
do 
    echo "Waiting for done.txt......"
    sleep 2
done 


# Example 3. Internet check
until ping -c 1 google.com &> /dev/null
do 
    echo "trying to connect ....."
    sleep 1
done 

# # Example 4. File becomes non-empty
until [ -s "output.log" ]
do  
    echo "Waiting for output..."
    sleep 2
done 

Example 5. Disk Space check

until [ $(df / | awk 'NR==2 {print $5 }' | tr -d '%' ) -lt 90 ]
do 
    echo "Disk usage too high..."
    sleep 3
done 