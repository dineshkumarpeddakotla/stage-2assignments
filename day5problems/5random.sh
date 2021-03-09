#!/bin/bash -x
D1=$(( RANDOM%(999-100) +100 ))
D2=$(( RANDOM%(999-100) +100 ))
D3=$(( RANDOM%(999-100) +100 ))
D4=$(( RANDOM%(999-100) +100 ))
D5=$(( RANDOM%(999-100) +100 ))
arr=($D1 $D2 $D3 $D4 $D5)
max=${arr[0]}
min=${arr[0]}
for i in "${arr[@]}"
do
    if [[ "$i" -gt "$max" ]]
    then
        max="$i"
    fi
    if [[ "$i" -lt "$min" ]]
    then
        min="$i"
    fi
done
echo "$max"
echo "$min"
