#!/bin/bash
echo "Deleted file size larger than 10MB"
find . -type f -size +10M -delete
