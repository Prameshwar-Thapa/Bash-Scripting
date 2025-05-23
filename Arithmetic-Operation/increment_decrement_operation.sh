#!/bin/bash
a=10
((a++))
echo "post-increment: $a"
((++a))
echo "Pre-increment: $a"
((a--))
echo "Post-decrement: $a"
((--a))
echo "Pre-decrement: $a"