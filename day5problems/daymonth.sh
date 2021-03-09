#!/bin/bash 
read -p "enter the month" m
read -p "enter the date" d
echo "$m $d"
if [ $m -ge 3 -a $m -le 6 -a $d -ge 20 ]
then
        echo $m $d "True";
elif [ $m -gt 3 -a $m -le 6 -a $d -lt 31 ]
then
        echo $m $d "True";
else
        echo "False";
fi
