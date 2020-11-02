#!/bin/bash
DIFF=$((999-100+1))
count=0
while [ $count -lt 10 ]
do
        numbers[((count++))]=$(($((RANDOM%DIFF))+100))
done
min=${numbers[0]}
for varx in ${numbers[@]}
do
        if [ $varx -lt $min ]
        then
                min=$varx
        fi
done
max=${numbers[0]}
for varx in  ${numbers[@]}
do
        if [ $varx -gt $max ]
        then
                max=$varx
        fi
done
echo "Array : "${numbers[@]}
echo "Min - "$min
echo "Max - "$max
count=0
for varx in ${numbers[@]}
do
        if [[ $varx -ne $max && $varx -ne $min ]]
        then
                secondArray[((count++))]=$varx
        fi
done
secondMin=${secondArray[0]}
secondMax=${secondArray[0]}
for varx in ${secondArray[@]}
do
        if [ $varx -lt $secondMin ]
        then
                secondMin=$varx
        fi
done
for varx in ${secondArray[@]}
do
        if [ $varx -gt $secondMax ]
        then
                secondMax=$varx
        fi
done
echo "Second Smallest - "$secondMin
echo "Second Largest - "$secondMax
