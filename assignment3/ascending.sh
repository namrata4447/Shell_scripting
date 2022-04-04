#!/bin/bash
echo "num:" $*
#echo "Enter a number:"
#read a

if [ $* -eq 0 ]
then
echo "$* is neither postive nor negative"
elif [ $* -gt 0 ]
then
echo "$* number is positive"
else
echo "$* number is negative"
fi

