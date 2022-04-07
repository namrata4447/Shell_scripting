#!/bin/bash
for x in $(find /home/ubuntu/ -type f -mtime +3);
do
       	rm "$x";
done
