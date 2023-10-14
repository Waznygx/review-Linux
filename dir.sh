#!/bin/bash

read -p "please input a dir:" dir
if [ -d "$dir" ]
then
	cd ./$dir
	touch file.txt
	echo "$dir is an old directory"
else
	mkdir $dir
	cd $dir
	pwd
	echo "$dir is a new directory"
fi
