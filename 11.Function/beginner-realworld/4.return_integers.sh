#!/bin/bash
check_even() {
	if (( $1 % 2 == 0 ));then
		return 0
	else
		return 1
	fi
}
check_even 10
if [[ $? -eq 0 ]]; then
	echo "Number is even"
else
	echo "Number is odd"
fi
