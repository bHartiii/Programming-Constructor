#!/bin/bash 
echo "1. degC to degF"
echo "2. degF to degC"
read -p "Choose any conversion - " choice
read -p "Enter the value for conversion - " value
celsiusToFahrenheit(){
	if [[ $value -gt -1 && $value -lt 101 ]]
	then
        	degC=$value
        	degF=`awk 'BEGIN {print("'$degC'" * 9/5) + 32}'`
        	echo $degF "Fahrenheit"
	else 
		echo "Input must be within 0 to 100."
	fi
}

fahrenheitToCelsius(){
	if [[ $value -gt 31 && $value -lt 213 ]]
	then
        	degF=$value
        	degC=`awk 'BEGIN {print("'$degF'" - 32) * 5/9}'`
        	echo $degC "Celsius"
	else
		echo "Inputs must be within 32 to 212"
	fi
}


case $choice in
	1) celsiusToFahrenheit $value ;;
	2) fahrenheitToCelsius $value ;;
	*) echo "Warning :: Enter a valid choice"
esac

