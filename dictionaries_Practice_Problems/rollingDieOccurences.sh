#!/bin/bash 

declare -i dice

count=1
while [ $count -le 10 ]
do
	key=$(( RANDOM%6 + 1  ))
	dice[key]=$count
	(( count++ ))
done


echo "  Keys :-"${!dice[@]}
echo "Values :-"${dice[@]}

#searching number that occurred maximum times
for i in "${!dice[@]}"
do
	if [ ${dice[$i]} -eq 10 ]
	then
		echo "Number of Die that occurred maximum times is:-"$i;
	break;
	fi
done

#searching number that occurred minimum times
min_value=10
min_key=0
for i in "${!dice[@]}"
do
	if [ ${dice[$i]} -lt $min_value ]
	then
		  min_value=${dice[$i]}
		  min_key=$i
	fi
done
echo "Number of die that occurred minimum times is :-"$min_key
