#! /bin/bash
read -p "Enter the number-" number
case $number in
	1) echo "Unit";;
	10) echo "Ten";;
	100)echo "Hundred";;
	1000) echo "Thousand";;
	10000) echo "Ten Thousand";;
 	100000) echo "Lac";;
	1000000) echo "Ten Lacs";;
	*) echo "Please enter number with 10^n format";;
esac
