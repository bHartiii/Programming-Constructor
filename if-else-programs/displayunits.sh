#! /bin/bash 
read -p "Enter the number" count
if [ $count -eq 1 ]
then 
	echo "Unit"
elif [ $count -eq 10 ]
then 
	echo "Ten"
elif [ $count -eq 100 ]
then 
	echo "Hundred"
elif [ $count -eq 1000 ]
then
	echo "Thousand"
elif [ $count -eq 10000 ]
then 
	echo"Ten Thousand"
elif [ $count -eq 100000 ]
then 
	echo "Lac"
elif [ $count -eq 1000000 ]
then
	echo "Ten Lacs"
elif [ $count -eq 10000000 ]
then 
	echo "Crore"
else
	echo "Please enter a number in valid format like 10^n"
fi
