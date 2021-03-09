#!/bin/bash 
declare -a num
i=0
while [ $i -lt 10 ]
do
num[$i]=$(( RANDOM%(899) +100 ))
i=$(( $i+1 ))
done
if [ ${num[0]} -gt ${num[1]} ] 
then
max=${num[0]}
sec_max=${num[1]}
else
max=${num[1]}
sec_max=${num[0]}
fi
if [ ${num[0]} -lt ${num[1]} ]
then
min=${num[0]}
sec_min=${num[1]}
else
min=${num[1]}
sec_min=${num[0]}
fi
for(( i=2;i<10;i++ ))
do
if [ ${num[i]} -gt $max ]
then
sec_max=$max
max=${num[i]}
elif [ ${num[i]} -gt $sec_max -a ${num[i]} -ne $max ]
then
sec_max=${num[i]}
fi
if [ ${num[i]} -lt $min ]
then
sec_min=$min
min=${num[i]}
elif [ ${num[i]} -lt $sec_min -a ${num[i]} -ne $min ]
then
sec_min=${num[i]}
fi
done
echo ${num[@]}
echo "max" $max
echo "second_max" $sec_max
echo "min" $min
echo "second_min" $sec_min
