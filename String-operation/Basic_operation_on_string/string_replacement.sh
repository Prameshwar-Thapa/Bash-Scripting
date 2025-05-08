#!/usr/bin/bash

str="Hello World"

new_str=${str/World/planet}

echo "new string: $new_str"