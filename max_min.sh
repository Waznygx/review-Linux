#!/bin/bash
echo -n "please input two numbers:"
read a b
let sum=$a+$b
echo "$sum"
if [ -f max_min.txt ]
then
	touch max_min.txt
fi

while ((i<10))
do
	echo "$sum">>max_min.txt
	((i++))
done
