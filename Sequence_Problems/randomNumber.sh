#! /bin/bash 

number1=$((RANDOM%6));
number2=$((RANDOM%6));
echo $number1 $number2
sum=$(( number1+number2 ));
echo "sum-"$sum;
