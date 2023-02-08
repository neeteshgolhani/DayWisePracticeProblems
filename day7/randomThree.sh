for ((i=0; i<10; i++))
do
rand_num=$((RANDOM % 900 + 100))
array[$i]=$rand_num
done

array=(${array[@]})
largest=0
smallest=999
second_largest=0
second_smallest=999

for num in "${array[@]}"
do

if [[ $num -gt $largest ]]
then
second_largest=$largest
largest=$num
elif [[ $num -gt $second_largest && $num -lt $largest ]]
then
second_largest=$num
fi
if [[ $num -lt $smallest ]]
then
second_smallest=$smallest
smallest=$num
elif [[ $num -lt $second_smallest && $num -gt $smallest ]]
then
second_smallest=$num
fi
done
echo "Array: ${array[@]}"
echo "2nd Largest: $second_largest"
echo "2nd Smallest: $second_smallest"
