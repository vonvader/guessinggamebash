README.md:
	touch README.md
	echo "Bash Guessing Game" > README.md
	echo "Date and time: " >> README.md
	echo `date +'%y.%m.%d %H:%M:%S'` >> README.md
	echo "Number of lines of code in Guessing game:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
