#!/bin/bash
echo "Welcome to Employee Wage Computation Program"

sum=0
#full_wage=160
#half_wage=80
#no_wage=0

getWage()
{
         if (( $1 == 1 ))
        then
                wage=160
        elif (( $1 == 2 ))
        then
                wage=80
        else
                wage=0
        fi
}
getAttendance()
{
        attend=$((RANDOM%3))
}

getTotalWage()
{
        sum=$(($sum+$1))
}
echo "Day No        Wage        Total Wage"
for (( d=1; d<=20; d++ ))
do
        getAttendance
        case "$attend" in
                "1")
                getWage 1
                #sum=$(( $sum + $wage ))
                getTotalWage $wage
                echo "Day $d         "$wage"        "$sum
                ;;
                "2")
                getWage 2
                getTotalWage $wage
                #sum=$(( $sum + $wage ))
                echo "Day $d         "$wage"         "$sum
                ;;
                *)
                getWage 0
                getTotalWage $wage
                #sum=$(( $sum + $wage ))
                echo "Day $d         "$wage"          "$sum
                ;;
        esac
done

