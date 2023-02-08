#!/bin/bash

echo "Enter a number N: "
read N

# Prime Factorization logic

for ((i=2; i*i<=N; i++))
do
  while [ $(($N % $i)) == 0 ]
  do
    echo $i
    N=$(($N/$i))
  done
done

# If the number is prime and greater than 2, it will remain after all factors are extracted
if [ $N > 2 ]
then
  echo $N
fi
