#! /bin/bash  
min=0;
max=0;
ZERO=0;
DIFF=$((999-100+1))
for((count=0;count<5;count++))
do
        number=$(($((RANDOM%DIFF))+100))
        echo "number"$count"-"$number
        if [ $number -gt $max ]
        then
		if [ $max -gt $ZERO ]
		then
			numArray[((i++))]=$max
		fi
                max=$number
	else 
		numArray[((i++))]=$number
        fi
done
min=${numArray[0]}
for num in ${numArray[@]}
do
	if [ $num -lt $min ]
	then
		min=$num
	fi
done

echo "max-" $max
echo "min-" $min
