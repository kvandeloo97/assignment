if [ -d ]; then
   	number_files=$(ls -l | wc -l)
fi

echo "Welcome to the guessing game."
echo
echo "Guess the number of files in the current directory."
read guess

while [[ $guess -ne $number_files ]]
do
		if [[ $guess -gt $number_files ]]
		then
			echo "Your guess is too high."
			echo "How many files are in the current directory?"
			read guess

		elif [[ $guess -lt $number_files ]]
		then
			echo "Your guess is too low."
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
