#!/bin/bash 
read -p "Enter a number - " number
result=1
count=1
echo "Table of the powers of 2 : "
while [[ $count -lt $number || $count -eq $number ]]
do
	result=$(($result*2))
	if [[ $result -lt 256 || $result -eq 256 ]]
	then
		echo $result
	
	else
		echo "Limit is reached."
		break	
	fi
	((count++))
done
