#!/bin/bash
D1=$(( RANDOM%(999-100) +100 ))
D2=$(( RANDOM%(999-100) +100 ))
D3=$(( RANDOM%(999-100) +100 ))
D4=$(( RANDOM%(999-100) +100 ))
D5=$(( RANDOM%(999-100) +100 ))
if [ $D1 -gt $D2 -a $D1 -gt $D3 -a $D1 -gt $D4 -a $D1 -gt $D5 ]
then
echo "$D1 is max";
elif [ $D2 -gt $D3 -a $D2 -gt $D4 -a $D2 -gt $D5 ]
then
echo "$D2 is max"
elif [ $D3 -gt $D4 -a $D3 -gt $D5 ]
then 
echo "$D3 is max";
elif [ $D4 -gt $D5  ]
then 
echo "$D4 is max"
else
echo "$D5 is max"
fi
if [ $D1 -lt $D2 -a $D1 -lt $D3 -a $D1 -lt $D4 -a $D1 -lt $D5 ]
then
echo "$D1 is min";
elif [ $D2 -lt $D3 -a $D2 -lt $D4 -a $D2 -lt $D5 ]
then
echo "$D2 is min"
elif [ $D3 -lt $D4 -a $D3 -lt $D5 ]
then
echo "$D3 is min";
elif [ $D4 -lt $D5  ]
then
echo "$D4 is min"
else
echo "$D5 is min"
fi




