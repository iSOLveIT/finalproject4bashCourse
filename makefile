all: README.md

README.md: guessinggame.sh
	echo "# GUESS GAME" > README.md
	date +'%A, %Y-%m-%d %H:%M %p' >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md