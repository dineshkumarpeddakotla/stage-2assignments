#!/bin/bash 
function poli(){
n=$1
rev=0
temp=$n
while [ $n -gt 0 ]
do
r=$(( $n%10 ))
rev=$(( $rev*10+$r ))
n=$(( $n/10 ))
done
if [ $temp -eq $rev ]
then
echo "$1 is a polindrom"
else
echo "$1 ia not a polindrom"
fi
}
function prime(){
flag=0
for(( i=2;i<$1;i++ ))
do
if [ $(( $1%$i )) -eq 0 ]
then
flag=1
break
fi
done
if [ $flag -eq 0 ]
then
echo "$1 is a prime"
else
echo "$1 is not a prime"
fi
}
read -p "enter the number" n
poli=$( poli $n )
prime=$( prime $n )
echo "$poli"
echo "$prime"
