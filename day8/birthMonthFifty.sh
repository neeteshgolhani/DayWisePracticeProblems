declare -A birth_months
for i in {1..50}
do
month=$(( ($RANDOM % 12) +1 ))
birth_months[$i]=$month
done
echo "birth in month ${birth_months[@]}"
