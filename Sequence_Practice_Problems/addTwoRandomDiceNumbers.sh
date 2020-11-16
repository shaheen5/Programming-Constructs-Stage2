#!/bin/bash

num1=$(( RANDOM%6 + 1 ))
num2=$(( RANDOM%6 + 1 ))
result=$(( num1+num2 ))
echo "$num1+$num2=" $result
