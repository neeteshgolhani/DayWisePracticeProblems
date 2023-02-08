#!/bin/bash
echo what is your age
read age
if [ $age -eq 18 ]
then
	echo you are eligible
else
	echo you cannot vote
fi
