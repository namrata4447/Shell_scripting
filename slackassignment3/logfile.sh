#!/bin/bash
cat input_log.txt | sort -k8 > output_log.txt
echo -n "***Output log****" 
uniq -f 2 output_log.txt

