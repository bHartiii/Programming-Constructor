#!/bin/bash 
read -p "Enter the number - " n
if [ $n -gt 0 ]
then
	for((count=1;$count<=$n;count++))
	do
		result=`awk 'BEGIN { print("'$result'"+1/"'$count'") }'`
	done
	echo "Nth Harmonic Number - " $result 
else
	echo "Please enter a number greater than zero."
fi
