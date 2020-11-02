#! /bin/bash
wins=0
loss=0
count=100
while [[ $count -gt 0 && $count -lt 200 ]]
do
        var=$((RANDOM%2))
        if [ $var -eq 1 ]
        then
		(( wins++ ))
		(( count++ ))
        else
		(( loss++ ))
                (( count-- ))
        fi
done
total_bets=$(($wins+$loss))
echo "Total bets - "$total_bets
echo "Wins - "$wins

if [ $count -eq 0 ]
then
	echo "There is no money left."
elif [ $count -eq 200 ]
then
	echo "The goal is acheived."
fi
