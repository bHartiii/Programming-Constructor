#! /bin/bash  

max=100;
min=999;
DIFF=$((999-100+1))
for((count=0;count<5;count++))
do
	number=$(($((RANDOM%DIFF))+100))
	echo "number"$count"-"$number
	if [ $number -gt $max ]
	then
		
		max=$number
	fi
	
	if [ $number -lt $min ]
	then
		min=$number
	fi
	
done
echo "max-" $max
echo "min-" $min
