#!/bin/bash
read -p "enter the upper limit" n
lowerlimit=0
while [ $lowerlimit -le $n -a $lowerlimit -le 8  ]
do
result=$(( 2**$lowerlimit ))
echo "2**""$lowerlimit""=""$result"
lowerlimit=$(( lowerlimit+1 ))
done
