#!/bin/bash

read -p "Enter your fruit: " fruit

case "$fruit" in
	apple) echo "Apples are red." ;;
	banana) echo "Banana are yellow." ;;
	*) echo "Unknow fruit." ;;
esac
