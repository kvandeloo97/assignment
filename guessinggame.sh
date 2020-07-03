# guessing game, bash script

if [ -d ]; then
   	number_files=$(ls | wc -l)
fi

echo "Welcome to the guessing game."
echo
echo "Guess the number of files in the current directory."
read guess

function yourguess {
	echo "Your guess is $1"
}

echo $yourguess

while [[ $guess -ne $number_files ]]
do
		if [[ $guess -gt $number_files ]]
		then
			echo "This is too high."
			echo "How many files are in the current directory?"
			read guess

		elif [[ $guess -lt $number_files ]]
		then
			echo "This is too low."
			echo "How many files are in the current directory?"
			read guess
		else
			echo "Congratulations, you have guessed the correct number of files!"
			break
fi
done

while [[ $guess == $number_files ]]
do
	echo "Congratulations, you have guessed the correct number of files!"
	break
done
