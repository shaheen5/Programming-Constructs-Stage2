#!/bin/bash

read -p "Enter a number:-" num
fact=1
for (( i=num;i>=1;i-- ))
do
	fact=$(( fact*i ))
done
echo "$num!=" $fact
