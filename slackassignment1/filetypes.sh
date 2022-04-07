#!/bin/bash
echo “Enter the file or directory”
read fname
if [[ -f  $fname ]]
  then
    echo "$fname is a regular file"
elif [[ -d $fname ]]
  then
    echo "$fname is a directory"
    ls -l $fname
else
    echo “$fname is another type of file”
fi

