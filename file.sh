#!/bin/bash

#CHECK THE FUKE IS EXITS OR NOT 

file="lata.txt"

if [[ -f "$file" ]]; then
	echo "file exits"
else
	echo "file does not exits"
fi

