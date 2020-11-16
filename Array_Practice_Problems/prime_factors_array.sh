#!/bin/bash 

#function to print all prime factors of given number
function primeFactor(){
num=$1
temp=$num

while [ $(( temp%2 )) -eq 0  ] #check divisible by 2
do
	primeFactors[count++]=2  #print number of 2s that divide temp
	temp=$(( temp/2 ))
done

 #calculate square root of temp
tempSqrt=$(echo $temp | awk '{print sqrt($1)}' )
tempVar=${tempSqrt%.*}        # Neglect decimal values in sq root

for (( i=3;i<=tempVar;i=i+2 ))
do
	while [ $(( temp%i )) -eq 0 ]
	do
		primeFactors[count++]=$i
		temp=$(( temp/i ))
	done
done

#if number is prime number greater than 2 then print that number itself
if [ $temp -gt 2 ]
then
	primeFactors[count++]=$temp
fi
echo -e "Prime Factors of $num are:-\n"${primeFactors[@]}
}

read -p "Enter a number :-" userInput
primeFactor $userInput
