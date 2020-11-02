#!/bin/bash 
read -p "Enter the number" number
read -p "Choose any One- 1. Feet to Inch 2. Inch to Feet 3. Feet to Meter 4. Meter to Feet - " choice
feet_into_inch=$(($number*12))
inch_into_feet=`awk 'BEGIN { print ( "'$number'" * 0.08333 ) }'`
feet_into_meter=`awk 'BEGIN{print("'$number'" * 0.3048)}'`
meter_into_feet=`awk 'BEGIN{ print("'$number'" * 3.28084)}'`
case $choice in 
	1) echo $number"Feet = "$feet_into_inch"Inch";;
	2) echo $number "Inch = "$inch_into_feet"Feet";;
	3) echo $number "Feet = "$feet_into_meter"Meter";;
	4) echo $number "Meter = "$meter_into_feet "Feet";;
	*) echo "Enter a valid coice";;
esac
