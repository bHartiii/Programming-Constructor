#! /bin/bash 
ZERO=0
read -p "Enter the year-" year
if [ $(($year%100)) -eq $ZERO ]
then
	if [ $(($year%400)) -eq $ZERO ]
	then
		echo $year "is a leap year."
	else
		echo $year "is not a leap year."
	fi
else
	if [ $(($year%4)) -eq $ZERO ]
	then
		echo $year "is a leap year."
	else 
		echo $year "is not a leap year."
	fi
fi
