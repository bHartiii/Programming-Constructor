#! /bin/bash 
heads=0
tails=0
count=0
while [[ $heads -lt 11 && $tails -lt 11 ]]
do
	var=$((RANDOM%2))
	echo "Flip - " $var
	if [ $var -eq 1 ]
	then
		(( heads++ ))
	else
		(( tails++ ))
	fi
	((count++))
done
echo "HEADS - "$heads
echo "TAILS - "$tails
