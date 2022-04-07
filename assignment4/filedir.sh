#!/bin/bash
echo "No. of files is $(find "$@" -type f | wc -l)"
a=$(find "$@" -type d | wc -l)
b=$(($a - 1))
echo "No. of directories is $b"
echo "**list of files**"
for i in `ls -a *.*`
do
echo "$i"
done
echo "**list of directories**"
for j in `ls -d */ `
do
	echo "$j"
done
