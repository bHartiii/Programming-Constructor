#! /bin/bash 

read -p "Enter the month name-" month
read -p "Enter the day-" day
DAY=20
MARCH="march"
JUNE="june"

if [[ "$month" == "$MARCH" && $day -gt $DAY ]]
then
	echo "True"
else
	if [[ "$month" == "$JUNE" && $day -lt $DAY ]]
	then	
		echo "True"
	else
		echo "False"
	fi
fi

