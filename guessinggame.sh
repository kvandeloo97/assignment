#!/usr/bin/env bash
# File : guessing.sh
# Peer-graded assignment (The Unix Workbench)

echo "Welcome to the guessing game!"
echo "How many files are in the current directory?"
read guess

function guess_numberfiles {
	local number_files=$(ls -l | wc -l)
	echo $number_files
}

correct_guess=$(guess_numberfiles)

while [[ $guess -ne $correct_guess ]]
do
		if [[ $guess > $correct_guess ]]
		then
			echo "Your guess is too high. Let's try again."

		elif [[ $guess < $correct_guess ]]
		then
			echo "Your guess is too low. Let's try again."
		fi
		echo "How many files are in the current directory?"
		read guess
done

if [[ $guess == $correct_guess ]]
then
	echo "Congratulations! You have guessed correctly."
fi

