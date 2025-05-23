#!/bin/bash
a=10; b=20

if (( a == b)); then
    echo "Equal"
else
    echo "Not equal"
fi

if (( a > b )); then
    echo "a is greater"
else
    echo "b is greater"
fi