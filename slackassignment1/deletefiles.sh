#!/bin/bash
echo "Delete files older than 3 days"
find . -type f -mtime +3 -delete 
