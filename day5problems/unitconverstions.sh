#!/bin/bash 
read -p "enter the value" N
read -p "type of converstion" n

case $n in
1)
s1=$(( $N*12 ))
echo  "s1"
;;
2)
s2=$(( $N/12 ))
echo "$s2"
;;
3)
s3=$(( $N/3 ))

echo "$s3"
;;
4)
s4=$(( $N*3 ))

echo "$s4"
;;
*)
echo "invalid"
;;
esac



