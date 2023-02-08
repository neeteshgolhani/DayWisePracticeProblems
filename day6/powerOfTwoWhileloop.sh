n=$1
i=0
result=1
while (( $i -le $n )) && (( $result -le 256 ))
do
    echo "2^$i = $result"
    i=$(($i + 1))
    result=$(($result * 2))

done
echo $result
