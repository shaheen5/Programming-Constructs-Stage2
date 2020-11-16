#!/bin/bash

read -p "Enter Year:-" year  #take user input
count=0
temp=$year
while [ $temp -ne 0 ]     #check input year is 4 digit 
do
	temp=$(( temp/10 ))
	(( count++ ));
done

if [ $count -ne 4 ]
then
	echo "Input is incorrect!!"
	exit
fi

if [ $(( year%4 )) -eq 0 ]
then
	if [ $(( year%100 )) -ne 0 ] || [ $(( year%400 )) -eq 0 ]
	then
		echo "Leap Year"
	else
		echo "Not a Leap Year"
	fi
else
	echo "Not a Leap Year"
fi
