README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "Generated on: $$(date)" >> README.md
	echo "" >> README.md
	echo "## Number of lines in guessinggame.sh:" >> README.md
	wc -l < guessinggame.sh >> README.md

clean:
	rm -f README.md
