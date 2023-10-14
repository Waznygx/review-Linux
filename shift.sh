#!/bin/bash

for arg in "$@"
do
	if [ -d "$arg" ]
	then
		echo "$arg is a directory"
		ls $arg
	elif [ -f "$arg"  ]
	then
		echo "$arg is a file"
		cat $arg
	else
		echo "$arg"
	fi
	shift
done
