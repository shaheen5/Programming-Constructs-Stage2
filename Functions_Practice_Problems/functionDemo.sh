#!/bin/bash

isPrime() {
n=$1
if [ $n -eq 0 ] || [ $n -eq 1 ]
then
	echo "$n is neither prime nor composite!!"
	exit
fi
flag=0
for (( i=2;i<=n/2;i++ ))
do
	flag=1;
	if [ $(( n%i )) -eq 0 ]
	then
		flag=0;
	fi
done

if [ $flag -eq 1 ]
then
	echo "$n is prime"
else
	echo "$n is not prime"
fi
}


getPalindrome() {
n=$1
num=$n
rev=0
while [ $num -gt 0 ]
do
	remainder=$(( num%10 ))
	rev=$(( rev*10+remainder ))
	num=$(( num/10 ))
done

if [ $n -eq $rev ]
then
	echo "$n is a Palindrome!!!"
	isPrime $rev
else
	echo "Not a Palindrome!"
fi
}

read -p "Enter number:-" num
isPrime  $num
getPalindrome $num
