#!/bin/bash

echo -e "\nScript to add set of array numbers\n"

num="5 8 12 15 20"
sum=0
for i in $num
do
        sum=`expr $sum + $i`
done
echo "The sum is: $sum"
