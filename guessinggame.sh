#!/bin/bash

myNumber=$[($RANDOM % 100)+1]
echo "Enter number between 1 and 100: "

while read yourNumber;
do

if  [ $yourNumber -eq $myNumber ];
then 
echo -n ''Good job.'';

else
if [ $yourNumber -gt $myNumber ]; 
then 
echo -n "Your guess is too high. Try again."

elif [ $yourNumber -lt $myNumber ]; 
then
echo -n "Your guess is too low. Try again."
fi
fi 

done
