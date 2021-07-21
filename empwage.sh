#! /bin/bash -x
#constant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
WAGE_PER_HR=20
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
 salary=$(( empHrs*WAGE_PER_HR ))

