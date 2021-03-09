#!/bin/bash
read -p "enter the input number" n1
read -p "enter the output number" n2
for(( i=$n1;i<$n2;i++ )) 
do
flag=0
for(( j=2;j<$i;j++ ))
do
if [ $(( $i%$j )) -eq 0 ]
then
flag=1
fi
done
if [ $flag -eq 0 ]
then
echo "$i is prime"
fi
done
