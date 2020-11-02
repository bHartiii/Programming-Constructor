#!/bin/bash
DIFF=$((999-100+1))
count=0
while [ $count -lt 10 ]
do
        numbers[((count++))]=$(($((RANDOM%DIFF))+100))
done
min=${numbers[0]}
echo "Array before sorting : "${numbers[@]}
for((i=0;i<10;i++))
do
        for((j=i+1;j<10;j++))
        do
                if [ ${numbers[i]} -lt ${numbers[j]} ]
                then
                        temp=${numbers[i]}
                        numbers[((i))]=${numbers[j]}
                        numbers[((j))]=$temp
                fi
        done
done

echo "Array after sorting : "${numbers[@]}
echo "Min - "${numbers[9]}
echo "Max - "${numbers[0]}
echo "Second Min - "${numbers[8]}
echo "Second Max - "${numbers[1]}

