#!/bin/bash -x
for ((i=1; i<=5; i++))
do
num=$(( RANDOM %300 ))
if [ $sum+= -ge 500 ]
then 
echo "number are valid"
else
echo "numbers are invalid"
fi
done
