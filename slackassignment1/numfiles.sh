#!/bin/sh
echo "Directory path :"
dpath="/home/ubuntu/myshellscripts/slackassignment1/test1"
if [[ -d $dpath ]]
then
echo $dpath
cf=$(find $dpath -type f | wc -l)
echo "Total number of files: $cf"
else
echo "$dpath is not a directory"
fi
