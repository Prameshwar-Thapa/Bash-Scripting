#!/bin/bash

while true; do
	grep "ERROR" /var/log/syslog | tail -n 5
       sleep 10
done       

