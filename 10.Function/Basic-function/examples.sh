#!/bin/bash

# Example 1.
say_hello() {
    echo "Hello from Bash"
}
say_hello

# Example 2.
greet() {
    echo "Welcome to scripting"
}
greet

# Example 3.

print_date () {
    DATE=$(date)
    echo "Today date is: ${DATE}"
}
print_date