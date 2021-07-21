#! /bin/bash -x
#constant
IS_PART_TIME=1
WAGE_PER_HR=20
#variable
empcheck=$((RANDOM%2))
#selection
if [ $empcheck -eq $IS_PART_TIME ]
then
        empHrs=8
        salary=$(( empHrs*WAGE_PER_HR ))
else
        salary=0
fi
