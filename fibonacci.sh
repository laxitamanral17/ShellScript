#!/bin/bash

read -p "enter how many num: " n
a=0
b=1

for (( i=0; i<n; i++ ))
do
	echo -n "$a "
	fn=$((a + b))
	a=$b
	b=$fn
done


