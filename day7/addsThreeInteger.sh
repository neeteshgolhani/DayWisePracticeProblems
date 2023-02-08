
#!/bin/bash

echo "Enter first number: "
read a
echo "Enter second number: "
read b
echo "Enter third number: "
read c

sum=$((a + b + c))

if [ $sum -eq 0 ]
then
  echo "The sum of $a, $b and $c is zero."
else
  echo "The sum of $a, $b and $c is not zero."
fi

