function guess_files {
    local num_files=$(ls -1 | wc -l) # Get the number of files in the directory
    while true; do
        echo "How many files are in the current directory? Enter your guess:"
        read guess
        if [[ $guess -lt $num_files ]]; then
            echo "Your guess is too low. Try again."
        elif [[ $guess -gt $num_files ]]; then
            echo "Your guess is too high. Try again."
        else
            echo "Congratulations! You guessed the correct number of files: $num_files."
            break
        fi
    done
}

echo "Welcome to the Guessing Game!"
guess_files
