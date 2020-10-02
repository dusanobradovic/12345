#!/bin/bash

realNumOfFiles=$(ls -la .|egrep -c "(^-)|(^l)")
echo "Guess how many files are in $(pwd)"
function GuessingGame(){
        while true;do
                echo -n "Try: "
                read -r guess
                if ! [[ $guess =~ ^[0-9]+$ ]]
                then
        echo "Integers only?"
        continue
                fi
                if [ $guess -eq $realNumOfFiles ];then 
                        echo "Congrats.Real number of files in $pwd is $guess"
                        break
                elif [ $guess -lt $realNumOfFiles ];then
                        echo "Try again.Your number is too low!"
                else
                        echo "Try again. Your number is too high!"
                fi
        done 
}
