#!/bin/bash 
count=1
DIFF=6-1+1
declare -i integerDictionary
while [ $count -ne 0 ]
do
	result=$(($((RANDOM%DIFF))+1))
	case $result in
		1) ((integerDictionary[1]++));;
		2) ((integerDictionary[2]++));;
		3) ((integerDictionary[3]++));;
 		4) ((integerDictionary[4]++));;
  		5) ((integerDictionary[5]++));;
  		6) ((integerDictionary[6]++));;
	esac
	for varx in ${integerDictionary[@]}
	do
		if [ $varx -ge 10 ]
		then
			count=0
			break
		else
			count=1
		fi
	done
done
echo "integer dictionary key-value:" ${integerDictionary[@]}
min=${integerDictionary[1]}
max=${integerDictionary[1]}
for((num=1;num<=6;num++))
do
	varx=${integerDictionary[$num]}
	if [  $varx -lt $min ]
	then
		min=$varx
	elif [ $varx -gt $max ]
	then
		max=$varx
	fi
done
for((i=1;i<=6;i++))
do
	temp=${integerDictionary[$i]}
	if [ $temp -eq $max ]
	then
		echo "The number that reached maximum times : "$i
	elif [ $temp -eq $min ]
	then
		echo "The number that reached minimum times : "$i
	fi
done
