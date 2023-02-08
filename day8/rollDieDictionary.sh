

declare -A die_rolls

roll_die() {
die_roll=$((RANDOM % 6 + 1))
echo $die_roll
}

echo "Rolling the die..."

for i in {1..10}; do
result=$(roll_die)
die_rolls[$i]=$result
echo "Roll $i: $result"
done

echo "Results stored in the dictionary:"
echo ${die_rolls[@]}
