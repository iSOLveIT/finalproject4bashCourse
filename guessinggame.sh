#!/usr/bin/env bash

function nofiles {
    local numberFiles=$(find ./ -type f | wc -l)
    echo $numberFiles
}

echo "WELCOME TO THE GUESSING GAME, $USER"
while [[ true ]]
do        
    lenFiles=$(nofiles)
    echo "Guess how many files are in the current directory?"
    read guess
    if [[ $guess -gt $lenFiles ]]
    then
        echo "Guess was too high. Try Again!"
        continue
    elif [[ $guess -lt $lenFiles ]]
    then
        echo "Guess was too low. Try Again!"
        continue
    else
        echo "Congratulation, You guessed right."
        break
    fi
done