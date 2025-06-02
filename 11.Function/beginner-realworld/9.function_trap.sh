#!/bin/bash

cleanup() {
	echo "Cleaning up before exit..."
	}
trap cleanup SIGINT

wait_function() {
	echo "Waiting... press Ctrl+C to exit"
	sleep 10
}

wait_function
