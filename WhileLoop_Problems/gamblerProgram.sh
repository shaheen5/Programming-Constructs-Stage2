#!/bin/bash

cash=100
bet_amount=1
won=0
loss=0
total_no_of_bets=0
while [ $cash -gt 0 ] && [ $cash -lt 200 ]
do
	((total_no_of_bets++))
	flag=$(( RANDOM%2 ))
	if [ $flag -eq 1 ]
	then
		cash=$(( cash + bet_amount ))
		((won++))
	fi

	if [ $flag -eq 0 ]
	then
		cash=$(( cash - bet_amount ))
		((loss++))
	fi
done
echo "Total number of Bets="$total_no_of_bets
echo "No. of times Won="$won
echo "No. of times lost="$loss
echo "Cash left="$cash
