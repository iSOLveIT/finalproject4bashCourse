all: README.md

README.md: guessinggame.sh
	echo "# GUESS GAME" > README.md
	echo "##### Date and Time created: " >> README.md
	date +'%A, %Y-%m-%d %H:%M %p' >> README.md
	echo "##### Number of lines of code contained in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md