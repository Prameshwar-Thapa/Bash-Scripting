#!/usr/bin/bash

# Declare dictionary
declare -A fruits
fruits=(
    ["apple"]="red"
    ["banana"]="yellow"
    ["grape"]="purple"
)
echo "fruits: ${fruits[@]}"

# Accessing a value by key
echo "color of apple is:${fruits[apple]}"
echo "color of banana is: ${fruits[banana]}"
echo "color of grape is: ${fruits[grape]}"

# Listing all keys
echo "Keys: ${!fruits[@]}"
# Listing all values
echo "Values: ${fruits[@]}"

# Length of dictionary
echo "length of dictrionary: ${#fruits[@]}"
# Length of a key
echo "length of key: ${#fruits[apple]}"
# Length of a value
echo "length of value: ${#fruits[red]}"

# Slice dictionary
declare -A sliced_fruits
sliced_fruits=("${fruits[@]:1:2}")
echo "Sliced fruits: ${sliced_fruits[@]}"