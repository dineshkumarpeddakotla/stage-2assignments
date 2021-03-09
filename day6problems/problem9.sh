#!/bin/bash -x
read -p "enter the value between 1-100" n
while [ $n -gt 9 ]
do
sum=0
if [ $n -gt 0 ]
then
rem=$(( $n%10 ))
sum=$sum+$rem
n=$(( $n/10 ))
sum=$n
if [ $n -eq 1 ]
then
echo "it is magic number"
else
echo "it is not a magic number"
fi
fi
done

