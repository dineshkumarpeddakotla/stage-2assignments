#!/bin/bash
declare -A month_str
declare -A month
month_str=(["Jan"]=1 ["Feb"]=2 ["Mar"]=3 ["Apr"]=4 ["May"]=5 ["Jun"]=6 ["Jul"]=7 ["Aug"]=8 ["Sep"]=9 ["Oct"]=10 ["Nov"]=11 ["Dec"]=12)
month=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 [7]=0 [8]=0 [9]=0 [10]=0 [11]=0 [12]=0)
for(( i=0;i<50;i++ ))
do
n=$(( RANDOM%12+1 ))
month[$n]=$(( month[$n] +1 ))
done
for key in ${!month_str[@]}
do
echo $key ${month[${month_str[$key]}]}
done
