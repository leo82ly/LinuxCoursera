#!/usr/bin/env bash
# File: guessinggame.sh
# Assignment for Coursera
count=128
function correct_guess {        # One function...
  if [[ $1 -lt $2 ]]          # One if statement ...
  then
    echo "Too low!"
  elif [[ $1 -gt $2 ]];then
    echo "Too high! Please try again."
  else
    echo ""
    echo "Congratualations! You guessed right!"
  fi
}
while [[ $count -ne $guess ]]
do
  read -p "Guess how many files are in the current directory? " guess
  echo "You entered: $guess"
  echo $(correct_guess $guess $count)
done
