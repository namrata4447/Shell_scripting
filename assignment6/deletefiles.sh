#!/bin/bash
echo "Enter directory name"
read dn
#echo "**list of directories**"
#for i in `ls -d */ `
#do
        #echo "$i"
#done
#remove the zero-sized files in the current directory.
if [ -d "$dn" ];
then
    echo "Directory exist"
        for j in `find $dn -size 0`
        do
            rm $j
            echo "Zero-sized files are Successfully deleted"
        done
else
    echo "Directory does not exist"

fi
