realnum =$(ls -la .|egrep -c "(^-)|(^l)")

echo "Guess what is the number of files?"

function Guess() {

	while true;   do
		echo "your attempt: "
		if ! [[ $inp =~ $val ]]
		then
			echo "Enter integers only."
			read inp
		continue
			fi
			if [$inp -eq $realnum] 
			then	echo "Contratulations!"
				break
			elif  [$inp -gt $realnum]
			then    echo "Your number is too high, please try again."
				read inp
			else
				echo "Your number is too low, please try again."
			fi
		done
}



