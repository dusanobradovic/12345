README.md: guessinggame.sh
	echo "The title is guessing game" > README.md
	echo "make file run on:" >> README.md
	date >> README.md		
	echo "Number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
