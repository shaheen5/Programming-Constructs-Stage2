#!/bin/bash

echo "*********************** UNIT CONVERSION ******************************"
echo -e "1.Feet to Inch\n2.Feet to Meter\n3.Inch to Feet\n4.Meter to Feet"
read -p "Enter what you want to perform???" num
case $num in 
		1) read -p "Enter length in feets:-" ft
		   inches=$(( ft*12 ))
		   echo "$ft feet=$inches inches";;
		2) read -p "Enter length in feet:-" ft
		   m=$(echo $ft | awk '{print $1*0.3048}')
		   echo "$ft feet=$m meters";;
		3) read -p "Enter length in inches:-" inch
		   ft=$( echo $inch | awk '{print $1/12}' )
		   echo "$inch inches=$ft feet";;
		4)  read -p "Enter length in meters:-" m
		   ft=$( echo $m | awk '{print $1*3.281}' )
		    echo "$m meters=$ft feet";;
		*) echo "Invalid Input!!!";;
esac
