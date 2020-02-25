#!/bin/bash -x
printf "Welcome to Employee Wage Computation\n"
#CONSTANT
ISPRESENT=1
PERHOUR=20
FULLDAYHOUR=8
random=$((RANDOM%2+1))
if(( $ISPRESENT == $random))			#If random is 1 then present 0 then not present
then
	printf "Employee is present \n"
	calculateDailyEmployeewage=$(($PERHOUR*$FULLDAYHOUR))
	printf "Daily wages is : $calculateDailyEmployeewage \n"
else
	printf "Employee Not present\n"
fi
