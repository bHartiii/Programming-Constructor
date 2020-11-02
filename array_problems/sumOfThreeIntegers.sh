#!/bin/bash
read -p "Enter first integer - " num1
read -p "Enter the second integer - " num2
read -p "Enter the third integer - " num3
count=1
sum=0
numArray[0]=0
numArray[((count++))]=$num1
numArray[((count++))]=$num2
numArray[((count++))]=$num3
for var in ${numArray[@]}
do
        sum=$(($sum+$var))
done
echo "Sum - "$sum

