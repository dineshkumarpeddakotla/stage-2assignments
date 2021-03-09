#!/bin/bash 
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

if [ $s1 -gt $s2 -a $s1 -gt $s3 -a $s1 -gt $s4 ]
then
echo "$s1 is max";
elif [ $s2 -gt $s3 -a $s2 -gt $s4 ]
then
echo "$s2 is max"
elif [ $s3 -gt $s4 ]
then
echo "$s3 is max"
else
echo "$s4 is max"
fi
if [ $s1 -lt $s2 -a $s1 -lt $s3 -a $s1 -lt $s4 ]
then
echo "$s1 is min";
elif [ $s2 -lt $s3 -a $s2 -lt $s4 ]
then
echo "$s2 is min"
elif [ $s3 -lt $s4 ]
then
echo "$s3 is min"
else
echo "$s4 is min"
fi


