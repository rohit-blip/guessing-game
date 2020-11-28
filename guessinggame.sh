#!/usr/bin/env bash

cat << EOF
Welcome to Guessing Game!
------------------------
The rules are simple:
1. Enter the exact number of files
   in your current directory to win.
2. If you enter a number that is either
   either higher or lower than the number
   of files, you will get a prompt saying
   so.
3. Have fun! :D
------------------------

EOF

files=()

for f in *
do
	[[ -e $f ]] || continue
	files+=("$f")
done

no_of_files=${#files[*]}

function check_ans {

	echo "Enter your guess: "
	read response

	if [[ no_of_files -eq response ]]
	then
		echo "Congratulations, you got it right!"
		exit
	elif [[ no_of_files -lt response ]]
	then
		echo "The number you entered was too high. Try again... "
		check_ans
	elif [[ no_of_files -gt response ]]
	then
		echo "The number you entered was too low. Try again... "
		check_ans
	fi

}

check_ans
