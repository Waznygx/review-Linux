#!/bin/bash

add()
{
	echo -n "please input two num:"
	read a b
	let sum=$a+$b
	echo "$sum"
}
fact()
{
	echo -n "please input two num:"
        read a b
        let fact=$a*$b
        echo "$fact"

}
read -p "please input a char:" char
if [[ "$char" == "123" ]]
then
	echo "password correct!" 
elif [[ "$char" == "add" ]]
then
	add
elif [[ "$char" == "fact" ]]
then
	fact
else
	echo "input error!"
fi
