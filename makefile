
all: README.md

clean:
	rm README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "The time at which the make command was run:"
	date >> README.md
	echo "The guessing game script contains the following no. of lines of code: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

