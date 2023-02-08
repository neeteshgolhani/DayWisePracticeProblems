
function prime_factors()
{
local n=$1
local i=2
local prime_factors=()

while [ $i -le $n ]
do
while [ $((n % i)) -eq 0 ]
do
prime_factors+=($i)
n=$((n / i))
done
i=$((i + 1))
done

echo "${prime_factors[@]}"
}

echo "Enter a number: "
read n


result=($(prime_factors $n))

echo "The prime factors of $n are: ${result[@]}"




