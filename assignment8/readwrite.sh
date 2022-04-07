#!/bin/bash
echo "**Below are the files with read and write permissions**"
for file in *
do
#check for file
if [[ -f $file ]]
then
#check for read and write permissions
if [[ -r $file && -w $file  ]]
then
ls -l $file
fi
fi
done
