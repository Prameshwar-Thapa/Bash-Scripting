#!/bin/bash

get_host() {
	echo "$(hostname)"
}
myhost=$(get_host)
echo "This machine is : $myhost"
