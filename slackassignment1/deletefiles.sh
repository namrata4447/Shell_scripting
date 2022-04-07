#!/bin/bash
#list all files older than 3 days
find ./ -maxdepth 1 -type f -mtime +3 -print
#Delete files older than 3 days
#find /home/ubuntu/myshellscripts/slackassignment1/test1 -type f -mtime +3 -delete
