#!/bin/bash

function secondLargest(){
arr=("$@")
largest=0
secLargest=0

for i in "${arr[@]}"
do

	if [ $i -gt $largest ]
	then
		secLargest=$largest
		largest=$i
	fi

	if [ $i -ne $largest ] && [ $i -gt $secLargest ]
	then
		secLargest=$i
	fi
done
echo "Second Largest Element:-"$secLargest
}

function secondSmallest(){
array=("$@")
smallest=999
secSmallest=999
for i in ${array[@]}
do
	if [ $i -lt $smallest ]
	then
		secSmallest=$smallest
		smallest=$i
	fi

	if [ $i -ne $smallest ] && [ $i -lt $secSmallest ]
	then
		secSmallest=$i
	fi
done
echo "Second Smallest Element:-"$secSmallest
}


for  (( index=0;index<10;index++ ))
do
	num[(( index ))]=$(( RANDOM%899+100 ))
done
echo "10 Random 3 Digit Numbers are :-"
echo ${num[@]}
secondLargest ${num[@]}
secondSmallest ${num[@]}
