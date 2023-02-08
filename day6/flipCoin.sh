
heads_count=0
tails_count=0

while [ $heads_count -lt 11 ] && [ $tails_count -lt 11 ]
do
    FLIP=$(($(($RANDOM%10))%2))
    if [ $FLIP -eq 1 ]; then
        heads_count=$(($heads_count + 1))
        echo "heads"
    else
        tails_count=$(($tails_count + 1))
        echo "tails"
    fi
done

echo "Heads: $heads_count"
echo "Tails: $tails_count"

if [ $heads_count -eq 11 ]; then
    echo "Heads wins"
else
    echo "Tails wins"
fi
