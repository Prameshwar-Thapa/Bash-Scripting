#!/bin/bash

my_var="global"

show_scope() {
	local my_var="local"
	echo "Inside Function: ${my_var}"
}
show_scope
echo "Outside Function: ${my_var}"
