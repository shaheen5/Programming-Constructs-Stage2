#!/bin/bash

read -p "Enter two number [Range]:-" num1 num2  # read two input values for range
echo "Prime numbers between $num1 and $num2 (including $num1,$num2) are:-"
for (( i=num1;i<=num2;i++ ))                    # loop from num1 to num2
do
	flag=0;                                 #set flag to 0

	if [ $i -eq 0 ] || [ $i -eq 1 ]        #ignore 1 and 0 
	then
		continue;
	fi

	for (( j=2;j<=i/2;j++ ))		#check number is prime
	do
		if [ $(( i%j )) -eq 0 ]
		then
			flag=1;
			break;
		fi
	done
	if [ $flag -eq 0 ]
	then
		echo $i
	fi
done
