#!/bin/bash

read -p "Enter n:-" n
sum=0
echo "Harmonic number is of form:-"
for (( i=1;i<=n;i++ ))
do
	echo -n "1/$i"
	if [ $i -lt $n ]
	then
		echo -n " + "
	fi
	var_divide=$(echo $i | awk '{print 1/$i}')
	sum=`echo $sum $var_divide | awk '{print $1 + $2}'`
done
echo -e "\nSum of $nth harmonic series=" $sum
