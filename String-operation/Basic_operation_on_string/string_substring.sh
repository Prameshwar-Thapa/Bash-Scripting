#!/usr/bin/bash

str="Helloworld"

# Extract "Hello"
sub1=${str:0:5}


#Extract "World"
sub2=${str:5:5}

echo "First Part: $sub1"
echo "Second Part: $sub2"

full_name="PrameshwarThapa"

first_name=${full_name:0:10}
last_name=${full_name:10:14}

echo "first_name: $first_name"
echo "last_name: $last_name"