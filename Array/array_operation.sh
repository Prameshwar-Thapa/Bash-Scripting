#!/usr/bin/bash

# Declatre indexed array
declare -a names
names=("John" "Doe" "Jane" "Smith")

# Add element to array
names+=("Alice")

echo "Array after adding element: ${names[@]}"

# Loop through array
for name in "${names[@]}"; do
    echo "Name: $name"
done

# Print array Length
echo "Total: ${#names[@]}"

# Remove one
unset names[1]
echo "Array after removing element: ${names[@]}"

# Copy array
declare -a new_names
new_names=("${names[@]}")
echo "New array: ${new_names[@]}"

# Slice array
declare -a sliced_names
sliced_names=("${names[@]:1:2}")
echo "Sliced array: ${sliced_names[@]}"

