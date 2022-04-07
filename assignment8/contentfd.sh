#!/bin/bash
echo "Enter file or directory"
read name
if [[ -f $name ]]
then
        echo "It is a file"
	echo "**Content displayed**" 
       	more $name
else
        echo "It is a directory"
	echo "**directory list**"
        ls -l  $name
fi
