#!/bin/bash  
declare -A die
die=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0)
while [ ${die[1]} -lt 10 -a ${die[2]} -lt 10 -a ${die[3]} -lt 10 -a ${die[4]} -lt 10 -a ${die[5]} -lt 10 -a ${die[1]} -lt 10 ]
do
for(( i=0;i<=6;i++ ))
do
s=$(( RANDOM%6+1 ))
done
die[$s]=$(( ${die[$s]}+1 ))
done
maxdie=1
maxkey=1
mindie=12
minkey=-1
for(( j=1; j<=6; j++))
do
if [ $maxdie -lt ${die[$j]} ]
then
maxdie=${die[$j]}
maxkey=$j
fi
if [ $mindie -gt ${die[$j]} ]
then
mindie=${die[$j]}
minkey=$j
fi
done
echo "values" ${die[@]}
echo "keys" ${!die[@]}
echo $maxkey ":" $maxdie
echo $minkey ":" $mindie
