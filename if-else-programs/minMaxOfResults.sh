#! /bin/bash 
read -p "Enter the first number-" a
read -p "Enter the second number-" b
read -p "Enter the third number-" c
result[((count++))]=$((a+b*c))
result[((count++))]=$((a%b+c))
result[((count++))]=$((c+a/b))
result[((count++))]=$((a*b+c))
min=${result[0]}
echo "results-" ${result[@]}
for varx in ${result[@]}
do
	if [ $varx -lt $min ]
	then
		min=$varx
	fi
done
max=${result[0]}
for varx in  ${result[@]}
do
	if [ $varx -gt $max ]
	then
		max=$varx
	fi
done
echo "min-" $min
echo "max-" $max
