#!/bin/bash 
DIFF=12-1+1
YEAR=93-92+1
read -p "Enter the month name - " temp_month
declare -A birthDateDictionary
for((count=1;count<=50;count++))
do
	month=$(($((RANDOM%DIFF))+1))
	year=$(($((RANDOM%YEAR))+92))
	case $month in
		1) month="JANUARY";;
		2) month="FEBRUARY";;
		3) month="MARCH";;
		4) month="APRIL";;
		5) month="MAY";;
		6) month="JUNE";;
		7) month="JULY";;
		8) month="AUGUST";;
		9) month="SEPTEMBER";;
		10) month="OCTOBER";;
		11) month="NOVEMBER";;
		12) month="DECEMBER";;
	esac

	birthDateDictionary[$count]=`echo $month"/"$year`
done
temp=""
#echo ${birthDateDictionary[@]}
echo "Persons having bday in "$temp_month" month - "
for((i=1;i<=50;i++))
do
	varx=${birthDateDictionary[$i]}
	temp=`echo $varx|awk -F / '{print $1}'`
	if [[ $temp == $temp_month ]]
	then
		echo $i
	fi
done

