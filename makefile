all: README.md

	echo "# Guessing game bash script for the Unix Workbench" > README.md
	echo "## Make ran at:" >> README.md
	date >> README.md 
	echo "## The number of lines within the Guessinggame bash script is:" >> README.md
	cat guessinggame.sh | wc -l >> README.md 
