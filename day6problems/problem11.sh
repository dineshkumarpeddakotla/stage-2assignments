#!/bin/bash
function degf(){
if [ $1 -ge 0 -a $1 -le 100 ]
then
degF=$(( ( $1*9/5 )+32 ))
echo "$degF"
else
echo "choice of conversiton wrong"
fi
}
function degc(){
if [ $1 -ge 32 -a $1 -le 212 ] 
then
degC=$(( ($1-32)*5/9 ))
echo "$degC"
else 
echo "choice of converstion wrong"
fi
}
read -p "enter the degree value between" deg
read -p "enter the choice of counverstion" n
echo "1 is farenheat converstion"
echo "2 is celcies converstion"

case $n in
1)
degF=$( degf $deg )
echo "deg in farenheat""-""$degF"
;;
2)
degC=$( degc $deg )
echo "deg in celseius""-""$degC"
;;
*)
echo "invalid"
;;
esac

