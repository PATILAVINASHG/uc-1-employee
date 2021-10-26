#!/bin/bash -x

isPartTime=1;
isFullTime=2;
Max_Rate_In_Month=100;
EmpRatePerHr=20;
NumOfWorkingDays=20;

totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHr -lt $Max_Rate_In_Month && $totalWorkingDays -lt $NumOfWorkingDays ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3));
	case $randomCheck in
		$isFullTime)
			empHrs=8;
			;;
		$isPartTime)
			empHrs=4;
			;;
		*)
			empHrs=0;
			;;
	esac

	totalEmpHr=$(($totalEmpHr+$empHrs))
	totalSalary=$(($totalEmpHr*$EmpRatePerHr));
done
