#!/bin/bash
# Warn if any partition is over 80%

threshold=80

df -h | awk 'NR>1 {print $5 " " $1}' | while read -r usage partition; do
  percent=${usage%\%}
  if (( percent > threshold )); then
    echo "WARNING: $partition is ${percent}% full"
  fi
done
