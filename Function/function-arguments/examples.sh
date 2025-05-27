#!/bin/bash

# Example 1.
greet_user() {
    echo "Hello, $1"
}
greet_user "Prameshwar"

# Example 2.

add_number() {
    echo "sum: $(( $1 + $2 ))"
}
add_number 5 10 

# Example 3.

introduce_person() {
echo "Name : $1"
echo "Age: $2"
echo "Address: $3"
}

introduce_person Jane 32 Melbourne