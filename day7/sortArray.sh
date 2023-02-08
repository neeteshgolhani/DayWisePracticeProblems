#!/bin/bash

# Generate 10 random 3-digit numbers
for i in {1..10}; do
  arr[i]=$((RANDOM % 900 + 100))
done

# Sort the array in ascending order
sorted_arr=($(echo "${arr[@]}" | tr ' ' '\n' | sort -n))

# Find the 2nd largest and 2nd smallest element
second_largest=${sorted_arr[8]}
second_smallest=${sorted_arr[2]}

# Print the results
echo "Generated array: ${arr[@]}"
echo "Sorted array: ${sorted_arr[@]}"
echo "2nd largest element: $second_largest"
echo "2nd smallest element: $second_smallest"
