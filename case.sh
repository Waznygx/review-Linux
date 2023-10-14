#!/bin/bash

add()
{
	echo "this is a addition function"
}
fact()
{
	echo "this is a fact function"
}
read -p "please input a char:" char
case $char in
123)
	echo "password correct!";;
add)
	add;;
fact)
	fact;;
*)
	echo "input error!"
esac
