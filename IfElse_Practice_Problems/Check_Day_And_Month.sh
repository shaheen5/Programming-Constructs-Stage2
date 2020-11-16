#!/bin/bash

#day=`date "+%d" `
#month=`date "+%m" `
read -p "Enter day:-" day
read -p "Enter month:-" month
if [ $month -eq 3 ]
then
	if [ $day -ge 20 ] && [ $day -le 31 ]
	then 
		echo "True"
		exit
	else
		echo "False"
		exit
	fi
fi

if [ $month -eq 4 ]
then
	if [ $day -ge 1 ] && [ $day -le 30 ]
         then
		echo "True"
      		exit
	else
      		echo "False"
      		exit
	fi
fi

if [ $month -eq 5 ]
then
	if [ $day -ge 1  ] && [ $day -le 31 ]
	then
      		echo "True"
      		exit
	else
      		echo "False"
      		exit
	fi
fi


if [ $month -eq 6 ]
then
        if [ $day -ge 1 ] && [ $day -le 20 ]
        then
                echo "True"
                exit
        else
                echo "False"
                exit
        fi
fi


