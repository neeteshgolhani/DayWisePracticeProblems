echo hey user
echo please enter number1
echo please enter number2
read number1
read number2
if [ $number1 -gt $number2 ]
then
echo number1 is greater than number2
elif [ $number1 -lt $number2 ]
then
echo number1 is smaller than number2
else
echo number1 is equal to number2
fi
