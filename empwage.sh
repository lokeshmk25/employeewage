#! /bin/bash -x
#constant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
WAGE_PER_HR=20
MAX_WORK_DAYS=20
totalworkHR=0

for ((day=1;day<=$MAX_WORK_DAYS;day++))
do
        #variable
        empcheck=$(( RANDOM%3 ))

        #selection
        case $empcheck in
         $IS_PRESENT_FULL_TIME)
                empHrs=8 ;;
        $IS_PRESENT_HALF_TIME)
                empHrs=4 ;;
        *)
                empHrs=0 ;;
        esac
        totalworkHR=$((totalworkHR + empHrs))
        salary=$(( empHrs*WAGE_PER_HR ))
done
totalsalary=$(( totalworkHR * WAGE_PER_HR ))
