#!/bin/bash

sno=""
sname=""
sex=""
English=""
Linux=""
Java=""
Mysql=""
sum=""
avg=""

stu_message=/root/review_Linux/stu_message.txt

read -p "please input sno you want to modify:" sno
sno_info=$(grep "^$sno[ \t]*" $stu_message)
#-z后面直接使用一个可能为空的变量，而没有将其放在引号中，那么当该变量为空时，bash会将-z后面的空白视为一个未终止的参数
if [ -z "$sno_info" ]
then 
	echo "sno not found!"
else
#//被用作定界符，用来包围你想要匹配的模式。/^$sno/d是一个sed命令，其中^$sno是你想要匹配的模式，而d是你想要对匹配到的行执行的操作（在这个例子中，操作是删除行）
	sed -i "/^$sno/d" $stu_message
	read -p "input sname:" sname
	read -p "input sex:" sex
	read -p "input English:" English
        read -p "input Linux:" Linux
	read -p "input Java:" Java
        read -p "input Mysql:" Mysql
	sum=$((English+Linux+Java+Mysql))
	avg=$(echo "scale=2;$sum/4" | bc)
        echo "successfully modified!"
        echo -ne "$sno\t$sname\t\t$sex\t$English\t$Linux\t$Java\t$Mysql\t$sum\t$avg\n" >> $stu_message
fi
