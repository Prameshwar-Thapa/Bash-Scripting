#!/bin/bash

# Example 1. Local name varibale 
show_local() {
    local name="Jane"
    echo "Inside Function: $name"

}
show_local
echo "Outside function: $name"

# Example 2. Local Sum Calculation
add_local() {
    local x=5
    local y=10
    echo $(($x + $y))
}
add_local

# Example 3. Local Message
message() {
    local msg="Private Message"
    echo "$msg"
}
message