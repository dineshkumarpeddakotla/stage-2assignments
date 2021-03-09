#!/bin/bash -x
read -p "enter the value" a
read -p "enter the value" b
read -p "enter the value" c
s1=$(( a+b*c ))
s2=$(( a%b+c ))
s3=$(( c+a/b ))
s4=$(( a*b+c ))
echo "$s1"
echo "$s2"
echo "$s3"
echo "$s4"
array=($s1 $s2 $s3 $s4)
max=${array[0]}
min=${array[0]}
for i in "${array[@]}"
do 
if [[ $i -gt $max ]]
then
max=$i
fi
if [[ $i -lt $min ]]
then
min=$i
fi
done
echo "$max"
echo "$min"

