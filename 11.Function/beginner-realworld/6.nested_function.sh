#!/bin/bash

outer_function() {
	echo "This is outer function"

	inner_function() {
		echo "This is inner function"
	}

	inner_function
}
outer_function
