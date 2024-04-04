#!/bin/bash
login="psql --username=freecodecamp --dbname=number_guess"

echo "Enter your username:"
read user

# Trim input and fetch user_id and username in a single query
read user_id username <<< $($login -t -c "SELECT user_id, username FROM users WHERE username='$user'" | xargs)
username=$(echo "$username" | tr -d '|' | xargs)  # Remove any '|' characters

game_won=false
secret_number=$((RANDOM % 1000 + 1))
guess_num=0

# Function to prompt for a guess and read user input
prompt_guess() {
  echo "$1"
  read guess
  ((guess_num++))
  check_guess
}

# Function to check if the guess is correct, an integer, or needs another attempt
check_guess() {
  if [[ "$guess" =~ ^-?[0-9]+$ ]]; then
    if ((guess == secret_number)); then
      game_won=true
      echo "You guessed it in $guess_num tries. The secret number was $secret_number. Nice job!"
      # Insert the game record only once here
      $login -c "INSERT INTO games (user_id, num_guess) VALUES ($user_id, $guess_num)" > /dev/null 2>&1
    elif ((guess > secret_number)); then
      prompt_guess "It's lower than that, guess again:"
    else
      prompt_guess "It's higher than that, guess again:"
    fi
  else
    prompt_guess "That is not an integer, guess again:"
  fi
}

# Main game loo
guessing_game() {
  while [ "$game_won" = false ]; do
    prompt_guess "Guess the secret number between 1 and 1000:"
  done
}

# User registration or welcome back message
if [ -z "$user_id" ]; then
  # Insert new user and fetch user_id
  $login -c "INSERT INTO users (username) VALUES ('$user')" > /dev/null 2>&1
  user_id=$($login -t -c "SELECT user_id FROM users WHERE username='$user'" | xargs)
  echo "Welcome, $user! It looks like this is your first time here."
else
  games_ct=$($login -t -c "SELECT COUNT(*) FROM games WHERE user_id=$user_id" | xargs)
  best_gm=$($login -t -c "SELECT MIN(num_guess) FROM games WHERE user_id=$user_id" | xargs)
  echo "Welcome back, $username! You have played $games_ct games, and your best game took $best_gm guesses."
fi

guessing_game
