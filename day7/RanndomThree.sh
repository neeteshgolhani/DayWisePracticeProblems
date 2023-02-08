numbers=()

for i in {1..10}
do
    number=$(( 100 + $RANDOM % 900 ))
    numbers+=($number)
done

largest1=-1
largest2=-1
smallest1=10000
smallest2=10000
for number in "${numbers[@]}"
do
    if [ $number -gt $largest1 ]; then
        largest2=$largest1
        largest1=$number
    elif [ $number -gt $largest2 ]; then
        largest2=$number
    fi
    if [ $number -lt $smallest1 ]; then
        smallest2=$smallest1
        smallest1=$number
    elif [ $number -lt $smallest2 ]; then
        smallest2=$number
    fi
done

# Print the second largest and second smallest element
echo "Second largest: $largest2"
echo "Second smallest: $smallest2"

