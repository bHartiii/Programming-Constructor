#! /bin/bash 
read -p "Enter a number - " number
factorial=1
for((count=1;$count<=$number;count++))
do
	factorial=$(($factorial*$count))
done
echo "Factorial of "$number "is" $factorial

