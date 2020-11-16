#!/bin/bash

a=$(( RANDOM%899+100))
min=$a
max=$a
echo $a
for i in {1..4}
do
	num=$(( RANDOM%899+100 ))
	echo $num
	if [ $num -gt $max ]
	then
		max=$num
	fi

	if [ $num -lt $min  ]
	then
		min=$num
	fi
done

echo "Minimum::-"$min
echo "Maximum::-"$max
