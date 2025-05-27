#!/bin/bash

# Example 1. Sum Numbers

sum_numbers() {
    total=0
    while [ $# -gt 0 ]; do
        total=$((total + $1))
        shift
    done
    echo $total
}
sum=$(sum_numbers 1 2 3)
echo "Sum: $sum"


# Example 2. Concatenate String
concat_all() {
    result=""
    while [ $# -gt 0 ]; do
        result="${result}${1}"
        shift
    done
    echo "$result"

}
output=$(concat_all "Hello" "world" "!")
echo "$output"

# Example 3. Multiply Numbers
Multiply_all() {
    result=1
    while [ $# -gt 0 ]; do
        result=$((result * $1))
        shift
    done
    echo $result
}
product=$(Multiply_all 2 3 4)
echo "Product: $product"