#! /bin/bash -x 
read -p "Enter the number - " n
check=0
if [[ $n -lt 1 || $n -eq 1 ]]
then
	echo $n " is not a prime number."
else
	for((count=2;$count<=$(($n/2));count++))
	do
		if [ $(($n%$count)) -eq 0 ]
		then
			check=1
			break
		else
			check=0
		fi
	done

	if [ $check -eq 1 ]
	then
		echo $n " is not a prime number."
	else
		echo $n" is a prime number. "
	fi
fi
