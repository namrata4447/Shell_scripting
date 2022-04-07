#!/bin/bash
typ=$1
if [ -f $typ ]
then
   echo "$typ is regular file"
elif [ -d $typ ]
then  
   echo "$typ is directory"
   exit 1
elif [ -a $typ ]
then
   echo "$typ is another type of file"
   exit 2
fi
