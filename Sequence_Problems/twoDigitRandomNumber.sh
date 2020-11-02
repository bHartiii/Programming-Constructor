#! /bin/bash 

DIFF=$((99-10+1))
for((count=0;count<5;count++))
do
	number=$(($((RANDOM%DIFF))+10));
	echo $number;
	((number+=number));
done
average=$((number/count));
echo "sum of 5 random numbers-" $number;
echo "average of 5 random numbers-" $average;
