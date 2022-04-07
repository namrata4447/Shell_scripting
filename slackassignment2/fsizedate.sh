#!/bin/bash
ls -lSrh | sed '1d'| awk '{"date +'%D'" | getline d;} {print $9,$5,d}'
