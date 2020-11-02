#! /bin/bash 
read -p "Enter the lower limit : " lower_limit
read -p "Enter the upper limit : " higher_limit
check=1
for((counter=$lower_limit;$counter<=$higher_limit;counter++))
do
	n=$counter
	if [ $n -gt 1 ]
	then
        	for((count=2;$count<=$(($n/2));count++))
        	do
                	if [ $(($n%$count)) -eq 0 ]
               		then
                	       	check=0
				break
               		else
                       		check=1
                	fi
		done

        	if [ $check -eq 1 ]
        	then
               		echo "prime number - "$n
        	fi
	fi
done
