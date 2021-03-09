#!/bin/bash 
read -p "enter the year in 4 digit" Y
echo "$Y";
if [ $(( $Y%4 )) -eq 0 -a $(( $Y%100 )) -ne 0 ] || [ $(( Y%400 )) -eq 0 ]
then
echo "$Y is a leap year";
else
echo "$Y is not a leap year";
fi
