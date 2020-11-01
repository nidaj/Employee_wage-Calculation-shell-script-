#! /bin/bash
echo "Welcome To Employee Wage Computation Program on Master Branch"
attendance=$((RANDOM%2))
if (( $attendance == 1 ))
then
        echo "Employee is Present"
else
        echo "Employee is Absent"
fi


