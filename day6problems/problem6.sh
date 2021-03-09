#!/bin/bash 
read -p "enter the number" n
flag=0
for(( i=2;i*i<=$n;i++ ))
do
if [ $(( $n%$i )) -eq 0 ]
then
num=$i
for(( j=2;j<$num;j++ ))
do
if [ $(( $num%$j )) -eq 0 ]
then
flag=1
exit
fi
done
if [ $flag -eq 0 ]
then
echo "$num"
fi
fi
done
