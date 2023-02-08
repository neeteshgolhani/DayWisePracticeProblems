
double_digits=()

for i in {0..100}
do

if [ ${#i} -eq 2 ]; then

if [ "${i:0:1}" == "${i:1:1}" ]; then

double_digits+=($i)
fi
fi
done


echo ${double_digits[@]}
