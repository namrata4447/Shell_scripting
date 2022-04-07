#!/bin/bash
#echo "enter file name"
#read fname
#touch $fname
echo "Enter the CD number:" 
read cn
echo "Enter the Movie name:" 
read mn
echo "Enter the Language:" 
read lg
echo "Enter the CD Price:"
read pr
echo "Enter the Date Of Release:"
read dor
#a=$( echo "CD number : $cd" )
#b=$( echo "Movie name :$mn" )
#c=$( echo "Language :$lg" )
#d=$( echo "CD price  :$p" )
#e=$( echo "Date Of Release :$dor" )
echo "CD number : $cn" >> moviedatatxt
echo "Movie name :$mn" >> moviedata.txt
echo "Language :$lg" >> moviedata.txt
echo "CD price  :$pr" >> moviedata.txt
echo "Date Of Release :$dor" >> moviedata.txt
cat moviedata.txt
