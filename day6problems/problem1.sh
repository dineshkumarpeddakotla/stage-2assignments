#!/bin/bash
read -p "enter the value of n" n
for(( i=0;i<=$n;i++ ))
do
table=$(( 2**i ))
echo "2" "**" "$i""=" "$table"
done
