
array=(-1 -2 1 3 -4 0)
function check_sum() {
  for ((i=0; i<${#array[@]}-2; i++))
  do
    for ((j=i+1; j<${#array[@]}-1; j++))
    do
      for ((k=j+1; k<${#array[@]}; k++))
      do
        if [ $((array[i] + array[j] + array[k])) -eq 0 ]
        then
          echo "Numbers that add up to zero: ${array[i]}, ${array[j]}, ${array[k]}"
        fi
      done
    done
  done
}

check_sum

