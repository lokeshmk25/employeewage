#! /bin/bash -x
#constant
IS_PRESENT_FULL_TIME=2;
IS_PRESENT_HALF_TIME=1;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;
MAX_WORK_HR_IN_MONTH=4;

#VARIBLES

totalworkingDays=0;
totalEmpHr=0;

function getworkHR(){
        local empcheck=$1
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

function getEmpWage() {
	local $empHr=$1
	echo (($empHr*EMP_RATE_PER_HR))
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH ] && [ $totalworkingDays -lt $NUM_WORKING_DAYS ]]
do
        #variable
        empcheck=$(( RANDOM%3 ))
        ((totalWorkingDays++))
        empHrs="$( getworkHrs $empcheck )"
        totalEmpHrs=$((totalEmpHrs+$empHrs))
	dailyWage[$totalWorkingDays]="$( getEmpwage $empHrs )"
done
totalsalary=$(( $totalEmpHrs*EMP_RATE_PER_HR ));
echo ${dailyWage[@]}

