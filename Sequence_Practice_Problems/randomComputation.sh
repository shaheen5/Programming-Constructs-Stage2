#!/bin/bash 

for i in `seq 5`
do
	num1=$(( RANDOM%90+10 ));
	num2=$(( RANDOM%90+10 ));
	sum=$(( num1+num2 ));
	avg=$(( sum/2 ));
	echo "$i] Numbers:-$num1,$num2 sum=$sum average=$avg"
done
