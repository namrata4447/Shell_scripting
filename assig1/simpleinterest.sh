#!/bin/bash
echo "Enter principal value"
read p
echo "Enter rate"
read r
echo "Enter time"
read t
si=$(((p * r * t) / 100 ))
echo "The simple interest is Rs $si"

