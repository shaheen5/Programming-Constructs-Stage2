#!/bin/bash

read -p "Enter n:-" num
echo -e "INDEX \tPOWER\n"
power=1
for (( i=0;i<= $num;i++ ))
do
	echo -e "$i \t  $power"
	power=$(( power*2 ))

done
