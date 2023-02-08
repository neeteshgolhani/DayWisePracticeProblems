for i in {1..5}; do
  numbers[$i]=$((RANDOM % 900 + 100))
done


min=${numbers[1]}
max=${numbers[1]}
for i in "${numbers[@]}"; do
  if ((i > max)); then
    max=$i
  fi
  if ((i < min)); then
    min=$i
  fi
done
echo "Numbers: ${numbers[@]}"
echo "Minimum: $min"
echo "Maximum: $max"
