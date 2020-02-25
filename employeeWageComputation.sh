#!/bin/bash -x
printf "Welcome to Employee Wage Computation\n"
#CONSTANT
PERHOUR=20
FULLDAYHOUR=8
PARTTIMEHOUR=4
random=$((RANDOM%3+1))
#Using case statement
case $random in
	1)
		printf "Employee is present \n"
		calculateDailyEmployeewage=$(($PERHOUR*$FULLDAYHOUR))				#Calcute full time
		printf "Full time : $calculateDailyEmployeewage \n"
		;;

	2)
		printf "Employee is present \n"
		calculatePartTime=$(($PERHOUR*$PARTTIMEHOUR))						 #Calculate part time
		printf "Patr time employee wage : $calculatePartTime \n"
		;;

	3)
		printf "Employee not present"
		;;
esac
