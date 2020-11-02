#!/bin/bash
sum=0
for((count=1;count<10;count++))
do
        numArray[((i++))]=$(($count*11))
done
echo ${numArray[@]}
