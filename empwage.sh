#! /bin/bash -x
#constant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
WAGE_PER_HR=20
MAX_WORK_DAYS=20
MAX_WORK_HR=100
day=1
totalworkHR=0
function getworkHR(){
        local empcheck=$1
        local empHrs=0
         case $empcheck in
                $IS_PRESENT_FULL_TIME)
                        empHrs=8 ;;
                $IS_PRESENT_HALF_TIME)
                        empHrs=4 ;;
        *)
                        empHrs=0;;
        esac
        echo $empHrs
}


while [ $day -le $MAX_WORK_DAYS ] && [ $totalworkHR -lt $MAX_WORK_HR ]
do
        #variable
        empcheck=$(( RANDOM%3 ))
        ((day++))
        empHrs="$( getworkHR $empcheck )"
        totalworkHR=$((totalworkHR + empHrs))
        salary=$(( empHrs*WAGE_PER_HR ))
done
totalsalary=$(( totalworkHR * WAGE_PER_HR ))


