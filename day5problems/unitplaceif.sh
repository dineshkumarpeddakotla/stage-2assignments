#!/bin/bash
read -p "enter the  number" n
if [ $n -eq 1 ]
    then
      echo "one"
    elif [ $n  -eq 10 ]
    then
     echo "ten"
    elif [ $n  -eq 100 ]
then
     echo "hundred"
    elif [ $n  -eq 1000 ]
then
     echo "Thousand"
    elif [ $n  -eq 10000 ]
then
     echo "ten thousand"
    else
    echo "invalid"
fi

