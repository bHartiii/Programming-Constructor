#!/bin/bash 
read -p "Enter a number - " number
palindrome(){
temp=$number
while [ $number -gt 0 ]
do
	digit=$(($number%10))
	number=$(($number/10))
	reverse=`echo $reverse$digit`

done
if [ $temp -eq $reverse ]
then
	echo "Number is palindrome."
else
	echo "Number is not palindrome."
fi

}
palindrome $number
