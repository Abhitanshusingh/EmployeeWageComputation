#!/bin/bash -x
printf "Welcome to Employee Wage Computation\n"
#CONSTANT
ISPRESENT=1
PERHOUR=20
FULLDAYHOUR=8
PARTTIMEHOUR=4
random=$((RANDOM%2+1))
if(( $ISPRESENT == $random ))			#If random is 1 then present 0 then not present
then
	printf "Employee is present \n"

	checkingShedule=$((RANDOM%2+1))        #if 1 then full time 0 then part time
	if(( $checkingShedule == 1 ))
	then
		calculateDailyEmployeewage=$(($PERHOUR*$FULLDAYHOUR))				#Calculate full time
		printf "Daily wages is : $calculateDailyEmployeewage \n"
	fi
	if(( $checkingShedule == 2 ))
	then
		calculatePartTime=$(($PERHOUR*$PARTTIMEHOUR))						 #Calculate part time
		printf "Patr time employee wage : $calculatePartTime \n"
	fi
else
	printf "Employee Not present\n"
fi

