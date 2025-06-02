#!/bin/bash

say_hi() {
	local name="${1:-Guest}"
	echo "Hi, $name!"
}
say_hi "Prameshwar"
say_hi
