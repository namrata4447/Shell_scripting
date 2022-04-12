#!/bin/bash
echo " Enter the original filename to rename:" $o
read o
a=$( echo ${o%.*}.exe )
echo $a



