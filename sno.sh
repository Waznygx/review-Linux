#!/bin/bash

pwd
echo "$PWD"
#Choose one of the two methods
echo -n "please input your sno:"
read sno
touch sno.txt
#for i in {1..10}
while ((i<10))
do
        echo "$sno">>sno.txt
#	((i++))
	i=$i+1
done
