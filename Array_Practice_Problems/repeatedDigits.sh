#!/bin/bash

echo "Enter number between [0-100]" 

num=1
while [ $num -gt 0 ] && [ $num -lt 100 ]
do
	read num

	if [ $num -eq 0 ]   #if number entered is zero continue dont add in array
	then
		continue
	fi

	unit=$(( num%10 ))  #extract unit digit number
	tens=$(( num/10 ))  #extract tens place number

	if [ $unit -eq $tens ]  #check if units digit is same as tens
	then
		arr[index++]=$num       #add all numbers having repeated digits into array
	fi
done

if [ ${#arr[@]} -eq 0 ]   #check if array is empty
then
	echo "Sorry!!No element found."
else
	echo "Elements found :-"${arr[@]}
fi
