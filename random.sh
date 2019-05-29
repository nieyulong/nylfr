#!/bin/bash
n=$[RANDOM%101]
a=0
while :
 do
   let a++
   read -p "请输入一个数字(0~100):" g
   if [ $g -eq $n ];then
	echo "您神了,猜了${a}次就猜对了"
	exit
   elif [ $g -lt $n ];then
	echo "您猜小了"
   else
	echo "您猜大了"
   fi
 done 
