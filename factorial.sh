#!/bin/bash

echo -e "\nScript to find the factorial for the set of numbers\n"

num="2 4 5"
for i in $num
do
fact=1
n=$i
while [ $i -gt 0 ]
do
fact=`expr $fact \* $i`
i=`expr $i - 1`
done
echo -e "The factorial of $n is: $fact\n"
done

echo "This is to be pushed to the scripts branch"
