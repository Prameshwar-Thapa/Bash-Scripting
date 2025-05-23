#!/bin/bash

a=5 #0101
b=3 #0011

echo "AND : $(( a & b ))"
echo "OR: $(( a | b ))"
echo "XOR: $(( a ^ b ))"
echo "Left shift: $(( a << 1 ))"
echo "Right Shift: $((a >> 1))"
