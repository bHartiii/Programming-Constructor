#!/bin/bash -x
echo "Think a number between 1 to 100." 
n=100
number=0
while [[ $(($n/2)) -gt 0 ]]
do
	
	if [[ $number != $(($n/2)) ]]
	then
		echo "Magic Number - "$count
		((count++))
	fi
done

