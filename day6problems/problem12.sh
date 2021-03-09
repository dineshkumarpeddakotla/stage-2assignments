#!/bin/bash
function palindrom(){
n=$1
rev=0
temp=$n
while [ $n -gt 0 ]
do
r=$(( $n%10 ))
rev=$(( $rev*10+$r ))
n=$(( $n/10 ))
done
echo "$rev"
if [ $temp -eq $rev ]
then
echo "number is polindrom" 
return 1
else
echo "number is not polindrom"
return 0
fi
}
read -p "enter the number" n
read -p "enter the number to check" n1
palindrom=$( palindrom $n )
pali="$?"
if [ $pali -eq 1 ]
then
palindrom=$( palindrom $n1 )
pali2="$?"
if [ $pali2 -eq 1 ]
then
echo "Two are polindroms"
else
echo "two are not polindroms"
fi
fi
