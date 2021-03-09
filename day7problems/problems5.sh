#!/bin/bash 
declare -a samedigits
function samedigits(){
for(( i=$1;i<$2;i++ ))
do
if [ $(( i%11 )) -eq 0 ]
then
samedigits=($i)
echo "${samedigits[@]}"
fi
done
}
read -p "enter the lower input" n
read -p "enter the upper input" n1

samedigits=$( samedigits $n $n1 )
echo $samedigits
