#!/bin/bash
echo "Enter basic salary amount Rs:"
read b
da=$(( 34 * $b / 100 ))
echo "da is Rs:$da"
hra=$(( 24 * $b / 100 ))
echo "hra is Rs:$hra"
pf=$(( 11 * $b / 100 ))
echo "pf is Rs:$pf"
grossal=$(( $b + $da + $hra + $pf ))
echo "The Gross Salary is Rs:$grossal"

