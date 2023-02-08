echo "Think of a number between 1 and 100"

lower=1
upper=100

while [ "$lower" -lt "$upper" ]
do
middle=$(( (lower+upper) / 2 ))
echo "Is your number less than or equal to $middle?"
read answer
if [ "$answer" == "yes" ]; then
upper=$middle
else
lower=$(( middle + 1 ))
fi
done

echo "The magic number is $lower"



