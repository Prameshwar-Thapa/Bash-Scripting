#!/bin/bash
# Example 1
age=18

if [[ $age -ge 18 ]]; then
    echo "Adult"
fi

# Example 2
x=5
y=10
if [[ $x -lt $y ]]; then
    echo "x is less than y"
else
    echo "x is not less than y"
fi

# Example 3
score=75
if [[ $score -ge 90 ]]; then
    echo "Grade A"
elif [[ $score -ge 75 ]]; then
    echo "Grade B"
else
    echo "Grade C"
fi