#!/bin/bash

declare -A dice_rolls

# roll a die and find the number between 1 to 6
function roll_die() {
  local result=$(( $RANDOM % 6 + 1 ))
  echo $result
}

# repeat the die roll and store the result in a dictionary
while true; do
  result=$(roll_die)
  dice_rolls[$result]=$(( ${dice_rolls[$result]} + 1 ))

  # repeat till any one of the number has reached 10 times
  if [[ ${dice_rolls[$result]} -ge 10 ]]; then
    break
  fi
done

# find the number that reached maximum times
max_key=
max_value=0
for key in "${!dice_rolls[@]}"; do
  if [[ ${dice_rolls[$key]} -gt $max_value ]]; then
    max_value=${dice_rolls[$key]}
    max_key=$key
  fi
done

echo "The number that reached maximum times is $max_key with $max_value rolls."

# find the number that reached minimum times
min_key=
min_value=10
for key in "${!dice_rolls[@]}"; do
  if [[ ${dice_rolls[$key]} -lt $min_value ]]; then
    min_value=${dice_rolls[$key]}
    min_key=$key
  fi
done

echo "The number that reached minimum times is $min_key with $min_value rolls."

