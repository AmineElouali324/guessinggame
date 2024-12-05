#!/bin/bash

# Function to handle the guessing game
function guess_files {
    local num_files=$(ls -1 | wc -l)  # Get the number of files in the current directory
    local guess=-1                    # Initialize guess to a value that's not valid
    local attempts=0                  # Counter for the number of attempts

    echo "Welcome to the Guessing Game!"
    echo "Your task is to guess how many files are in the current directory."

    while [[ $guess -ne $num_files ]]; do
        # Prompt user for input
        echo -n "Enter your guess: "
        read guess

        # Validate input: ensure it's a number
        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "Invalid input. Please enter a positive number."
            continue
        fi

        # Increment the attempts counter
        attempts=$((attempts + 1))

        # Check if the guess is too high, too low, or correct
        if [[ $guess -lt $num_files ]]; then
            echo "Your guess is too low. Try again."
        elif [[ $guess -gt $num_files ]]; then
            echo "Your guess is too high. Try again."
        else
            echo "Congratulations! You guessed the correct number of files: $num_files."
            echo "It took you $attempts attempts to guess correctly."
        fi
    done
}

# Call the function
guess_files


