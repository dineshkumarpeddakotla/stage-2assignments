#!/bin/bash -x
read -p "enter the number" number
evenodd=$((  number%2 ))
case $evenodd in
             0)
            echo "even"
             ;;
              1)
              echo "odd" 
              ;;
              *)
               echo "default"
              ;;
esac
