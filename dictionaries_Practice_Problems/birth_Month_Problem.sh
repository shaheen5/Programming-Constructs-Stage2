#!/bin/bash 

declare -i birth_days

for (( i=1;i<=50;i++ ))
do
	month=$(( RANDOM%12+1 ))
	birth_days[month]=$((birth_days[$month]+1))
	((month++))
done
echo -e "Months of the year :\n"${!birth_days[@]}
echo -e "No of people having birthdays in same month\n"${birth_days[@]}
