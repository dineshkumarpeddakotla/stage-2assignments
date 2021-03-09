#!/bin/bash 
read -p "enter value n " n
for (( i=1;i<=n;i++ ))

do
random_var=$(( RANDOM%6 +1 ))
echo $random_var
sum=$(( sum+= $random_var ))
echo $sum
done
