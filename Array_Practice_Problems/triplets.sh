#!/bin/bash 

read -p "Enter the number of integers:- " number
echo "Enter the integers:"

for (( n=0;n<number;n++ ))
do
	read arr[i++]
done
echo "Entered elements:- "${arr[@]}

distinctCount=0

for (( i=0;i<$((number-2));i++ ))
do
	for (( j=i+1;j<((number-1));j++ ))
	do
		for (( k=j+1;k<number;k++ ))
		do
			if [ $(( arr[i]+arr[j]+arr[k] )) -eq 0 ]
			then
				(( distinctCount++ ))
				echo "[${arr[$i]} + ${arr[$j]} + ${arr[$k]} = 0]"
			fi
		done
	done
done
echo "Total distinct triplets:- "$distinctCount
