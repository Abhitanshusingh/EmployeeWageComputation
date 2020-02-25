#!/bin/bash -x
printf "Welcome to Employee Wage Computation\n"
#CONSTANT
PERHOUR=20
FULLDAYHOUR=8
PARTTIMEHOUR=4
NUMBEROFWORKINGDAYS=20
countFullTime=0
countPartTime=0
countNotPresent=0
for(( day=1; day <= $NUMBEROFWORKINGDAYS ; day++ ))
do
	random=$((RANDOM%3+1))
	#Using case statement
	case $random in
		1)
			calculateDailyEmployeewage=$(( PERHOUR * FULLDAYHOUR ))				#Calcute full time
			countFullTime=$((countFullTime+1))
			;;

		2)
			calculatePartTime=$((PERHOUR * PARTTIMEHOUR ))						 #Calculate part time
			countPartTime=$((countPartTime+1))
			;;

		3)
			countNotPresent=$((countNotPresent+1))
			;;
	esac
done
echo "Full time $countFullTime days employee wage :$(( calculateDailyEmployeewage*$countFullTime ))"
echo "Part time $countPartTime days employee wage :$(( calculatePartTime*$countPartTime ))"
echo "Not present $countNotPresent days"

