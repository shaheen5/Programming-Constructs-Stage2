#!/bin/bash  

read -p "Enter number:-" num
i=0
power=1
echo -e "INDEX \t POWER"
while [ $i -le $num  ]
do
	echo -e "$i \t $power"
	power=$(( power*2 ))
	(( i++ ))

	if [ $power -gt 256 ]   #print till 256 else exit 
	then
		exit
	fi
done
