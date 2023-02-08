echo hi user
echo what is your age
read age
if [ $age -gt 18 ]
then
echo you can vote
elif [ $age -lt 18 ]
then
echo you cannot vote
else
echo sahi h beta
fi
