#!/bin/bash

echo -e "\nScript to check the largest of three numbers\n"

echo "Enter the first number: $num1"
read $num1

echo "Enter the second number: $num2"
read $num2

echo "Enter the third number: $num3"
read $num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
        echo "$num1 is the largest number"

elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then 
        echo "$num2 is the largest number"
else
        echo "$num3 is the largest number"
fi
