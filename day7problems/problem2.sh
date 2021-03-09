#!/bin/bash
declare -a num
i=0
while [ $i -lt 10 ]
do
num[$i]=$(( RANDOM%(899) +100 ))
i=$(( $i+1 ))
done
for(( i=0;i<10;i++ ))
do
for(( j=i+1;j<10;j++ ))
do
if [ ${num[i]} -gt ${num[j]} ]
then
temp=${num[i]}
num[i]=${num[j]}
num[j]=$temp
fi
done
done
echo ${num[@]}
echo "max" ${num[n-1]}
echo "sec_max" ${num[n-2]}
echo "min" ${num[0]}
echo "sec_min" ${num[1]}
