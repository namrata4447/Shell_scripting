#!/bin/bash
echo enter the first file name
read fname1
cat $fname1
echo enter the second file name
read fname2
cat $fname2
if [[ -e $fname1 ]]
then
if [[ -e $fname2 ]]
then
	echo "file1 is appeneded to file2"
cat $fname1>>$fname2
cat $fname2
else
	 echo "file1 will overwrite to file2"
cat $fname1>$fname2
fi
fi

