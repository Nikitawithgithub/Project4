#!/bin/bash

echo "Enter the search pattern"
read pattern

grep -r -l $pattern * > pat_list

if [ $? -eq 0 ]
then
        cat pat_list

else
        echo "Nothing found"
fi
