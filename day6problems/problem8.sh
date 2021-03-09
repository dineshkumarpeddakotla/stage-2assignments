#!/bin/bash 
totalcount=0
headcount=0
tailcount=0
while [ $headcount -lt 11 -a $tailcount -lt 11 ]
do 
	if [ $(( RANDOM%2 )) -eq 0 ]
	then
	 headcount=$(( $headcount+1 ))
	else
	  tailcount=$(( $tailcount+1 ))
	fi
	totalcount=$(( $totalcount+1 ))
done
echo "$totalcount""-""$headcount""-""$tailcount"
