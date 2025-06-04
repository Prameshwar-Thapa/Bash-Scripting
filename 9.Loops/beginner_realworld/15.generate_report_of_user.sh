#!/bin/bash

cut -d: -f1,6 /etc/passwd | while IFS=':' read -r user home; do
  if [ -d "$home" ]; then
    echo "$user has home directory $home"
  fi
done
