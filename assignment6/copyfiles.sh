#!/bin/bash
echo enter the first file name
read fname1
cat $fname1
echo enter the second file name
read fname2
#cat $fname1>>$fname2
#echo "file is copied"
cat $fname2
if [[ -r $fname1 &&  $fname2 ]]
then
	echo "File has read permission"
if [[ -f $fname2 ]] 
then
	echo "file exits, do you want to overwrite [Y/N]"
	read a
	if [[ $a -eq Y ]]
	then
	b=$(cat $fname1 >$fname2)
	echo $b
	echo $(cat $fname2)
elif [[ $a -eq N ]]
then
	echo" do not overwrite"
else
        echo "File does not have read permission"
fi
fi
fi
