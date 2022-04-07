#!/bin/bash
echo -e "Enter a filename: \c"
read fname
l=`grep -c "." $fname`
w=`cat $fname| wc -w`
c=`cat $fname | wc -c`
echo "Number of lines : $l"
echo "Number of words : $w"
echo "Number of characters : $c" 
