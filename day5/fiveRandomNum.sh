function myRandomfunction(){
echo $1;
}
for (( i=0;i<=5;i++ ))
do
result=$(myRandomfunction $((10+ RANDOM % 89)));
echo $result
done

