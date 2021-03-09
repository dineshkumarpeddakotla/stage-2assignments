#!/bin/bash
win=0
bet=0
money=100
while [ $money -lt 200 -a $money -gt 0 ] 
do
	if [ $(( RANDOM%2 )) -eq 0 ]
	then
	money=$(( $money+1 ))
	win=$(( $win+1 ))
	else
	money=$(( $money-1 ))
	fi
	bet=$(( $bet+1 ))
done
echo "$win""-""$bet""- ""$money"
