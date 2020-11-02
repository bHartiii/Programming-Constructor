#! /bin/bash 
read -p "Enter a number - " n
result=1
for((count=0;$count<$n;count++))
do
	result=$(($result*2))
	echo "result - " $result

done

