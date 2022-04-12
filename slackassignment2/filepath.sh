#!/bin/bash
echo "Enter a filename :"
read fname
a=$(find /home -name $fname)
echo $a
