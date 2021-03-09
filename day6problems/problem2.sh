#!/bin/bash
read -p "enter the n value" n
for(( i=1;i<=$n;i++ ))
do
H+=1/$i+
done
echo "Hn="$H+
