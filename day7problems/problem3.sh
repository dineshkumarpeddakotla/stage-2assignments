#!/bin/bash
declare -a primefact
function primefact(){
count=0
flag=0
for(( i=2;i*i<=$1;i++ ))
do
if [ $(( $1%$i )) -eq 0 ]
then
num=$i
for(( j=2;j<$num;j++ ))
do
if [ $(( $num%$j )) -eq 0 ]
then
flag=1
break
fi
done
if [ $flag -eq 0 ]
then
primefact=($num)
echo ${primefact[@]}
fi
fi
done
}
read -p "enter the number" n
primefact=$( primefact $n )
echo ${primefact[@]}
