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
declare -A store_Daily_Wage
str="Day_"
for (( d=1; d<=20; d++ ))
do
        x=${str}${d}
        wage[$x]=0
done
#echo ${!store_Daily_Wage[@]}

echo "Day No        Wage        Total Wage"
for (( d=1; d<=20; d++ ))
do
        getAttendance
        case "$attend" in
                "1")
                getWage 1
                getTotalWage $wage
                echo "Day $d         "$wage"        "$sum
		store_Daily_Wage[${str}${d}]=$wage
		
		;;
                "2")
                getWage 2
                getTotalWage $wage
                echo "Day $d         "$wage"         "$sum
		store_Daily_Wage[${str}${d}]=$wage
                ;;
                *)
                getWage 0
                getTotalWage $wage
                echo "Day $d         "$wage"          "$sum
		store_Daily_Wage[${str}${d}]=$wage
                ;;
        esac
done
for k in ${!store_Daily_Wage[@]}
do
	echo  $k ${store_Daily_Wage[$k]}
done
