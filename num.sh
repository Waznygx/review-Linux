#!/bin/bash

echo -n "please input two numbers:"
read a b
for ((i=2;i<=a-1;i++))
do
	if (($a%i==0))
	then
		echo "$a is not a prime"
		break
	fi
done
if ((i>a-1))
then
	echo "$a is a prime"
fi

for ((i=2;i<=b-1;i++))
do
        if (($b%i==0))
        then
                echo "$b is not a prime"
                break
        fi
done
if ((i>b-1))
then
        echo "$b is a prime"
fi

