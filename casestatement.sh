#!/bin/bash
echo "Script to perform the following operations: "
echo -e "1. The name is file or directory" "\n2. Create a link" "\n3. Search the word present in a file" "\n4. Edit the file" "\n5. Find file" "\n6. Exit"

echo "Enter your choice from 1 to 6: " 
read choice

case $choice in
1) echo "Enter the name to check if it is a file/ directory: "
read name

if [ -f $name ]
then
        echo "$name is a file"
elif [ -d $name ]
then
        echo "$name is a directory"
elif [ -L $name ]
then
        echo "$name is a Link"
else
        echo "This is neither a file or a directory!"
fi
;;

2) echo "Enter the file to create its link: "
read file

if [ ! -f $file ]
then
        echo "$file does not exist!"
exit 1
fi

echo "Enter the linkname to be created: "
read link

if [ -L $link ]
then
        echo "$link already exists!"
exit 1
fi

ln -s $file $link

echo "Link is successfully created"
;;

3) echo "Enter the word to search: " 
read word

grep -l -r $word * > word_list

if [ $? -eq 0 ]
then
        echo "Word $word is found in the below files:"
cat word_list
else
        echo "Word $word is not found!"
fi
;;

4) echo "Enter the file to edit: "
read file

if [ -f $file ]
then
        vi $file
else
        echo "$file does not exist!"
fi
;;

5) echo "Enter the file to find its location: " 
read file

find . -type f -iname "$file" > loc

if [ -f $file ]
then
        echo "$file is located in the below location:"
cat loc

elif [ ! -f $file ]
then
        echo "$file does not exist!"
exit 1
fi
;;

6)echo "Exiting!!"
        exit 0
;;

*) echo -e "Invalid choice!" "\nPlease enter the valid choice!"
;;

esac
