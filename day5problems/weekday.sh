#!/bin/bash 
read -p "enter the number" number
case $number in
          1)
           echo "sunday"
            ;;
          2)
           echo "monday" 
             ;;
          3)
           echo "tuesday"
             ;;
          4)
           echo "wednesday"
             ;;
          5)
           echo "thursday"
             ;;
          6)
           echo "friday"
             ;;
          7)
           echo "sataurday"
             ;;
          *) 
           echo "invalid"
             ;;
esac
