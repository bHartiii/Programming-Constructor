#! /bin/bash 
read -p "Enter the number - " number
check=0
prime(){
	n=$1
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
}

palindrome(){
	temp=$1
	number=$1
	while [ $number -gt 0 ]
	do
        	digit=$(($number%10))
        	number=$(($number/10))
        	reverse=`echo $reverse$digit`
	done
	echo $reverse
}
result=$( palindrome $number )
prime $number
prime $result
