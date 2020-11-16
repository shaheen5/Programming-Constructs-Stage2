#!/bin/bash

read -p "Think of a number between 1 to 100:-" userInput
first=0
last=100
answer=$(( (first+last)/2 ))

while [ $first -lt $last ]
do
	echo "Is your number = "$answer
	echo -e "1.Enter 'c' if my guess is correct\n2.Enter 'h' to indicate if the guess is too high\n3.Enter 'l' to indicate if guess is too low"
	read check_ans

	if [ "$check_ans" == "h" ]
	then
		last=$answer
		answer=$(( (first+last)/2 ))
	elif [ "$check_ans" == "l" ]
	then
		first=$answer
		answer=$(( (first+last)/2 ))
	elif [ "$check_ans" == "c" ] && [ $userInput -eq $answer ]
	then
		echo "Hurray! Your number was :-"$answer
		break
	else
		echo "I do not understand your command!"
	fi

done

