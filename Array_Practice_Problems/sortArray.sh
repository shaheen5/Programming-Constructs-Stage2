#!/bin/bash


#Insertion Sort
function sort(){  
arr=("$@")
for (( i=1;i<10;i++ ))
do
	key=${arr[$i]}

	for (( j=i-1;j>=0 && arr[j]>key;j-- ))
	do
		arr[j+1]=${arr[$j]}
	done
arr[j+1]=$key
done
echo "Sorted Array:-"
echo ${arr[@]}
}

#generating 10 random numbers
for (( index=0;index<10;index++ ))
do
        num[(( index))]=$(( RANDOM%899+100 ))
done
echo "10 Random 3 Digit Numbers are :-"
echo ${num[@]}
sort ${num[@]}
echo "Second Largest Element:-"${arr[8]}
echo "Second Smallest Element:-"${arr[1]}
