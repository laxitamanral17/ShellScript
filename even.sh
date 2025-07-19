#!/bin/bash
#

read -p "enter the number: " num

if (( $num % 2 == 0 )); then
	echo " its a even num"
else
	echo "its a odd num"
fi
