#!/bin/bash

# Example 1. Global greeting

greeting="Hello"
show_gretting() {
    echo "$greeting"
}
show_gretting


# Example 2. Counter using global varibale
counter=0

increment() {
    counter=$(($counter +1))

}
increment
increment
echo "Counter: $counter"


# Example 3. Global Username
username="admin"
print_user() {
    echo "Current user is $username"
}
print_user