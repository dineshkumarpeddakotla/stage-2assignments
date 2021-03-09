#!/bin/bash 
read -p "enter the number" n
flag=0
for(( i=2;i<$n;i++ ))
do
if [ $(( $n%$i )) -eq 0 ]
then
flag=1
break	
fi
done
if [ $flag -eq 0 ]
then
echo "$n is a prime"
else
echo "$n is not a prime"
fi
