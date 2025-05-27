#!/bin/bash

# Example 1.
get_date() {

    echo $(date +%Y-%m-%d)
}
today=$(get_date)
echo "Today is $today"

# Example 2.
square() {
    echo $(($1 * $1))
}
result=$(square 4)
echo "Square: $result"

# Example 3.
hostname_info() {
    echo $(hostname)
}
host=$(hostname_info)
echo "Hostname:$host"