#!/bin/bash

print_line() {
	echo "============================="
}
print_header() {
	print_line
	echo "$1"
	print_line
}
print_header "system Info"
uname -a
	
