#!/bin/bash
read -p "Enter the number - " number
for((count=0;$(($number%2))==0;count++))
do
        number=$(($number/2))
        factorArray[((count++))]=2
done
for((count=3;$(($count*$count))<=$number;count=$(($count+2))))
do
        while [ $(($number%$count)) -eq 0 ]
        do
                number=$(($number/$count))
                factorArray[((count++))]=$count
        done
done
if [ $number -gt 2 ]
then
        factorArray[((count++))]=$number
fi
echo "Array : "${factorArray[@]}
