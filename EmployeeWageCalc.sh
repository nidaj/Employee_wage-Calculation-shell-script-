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
        store_Daily_Wage[$x]=0
done
#echo ${!store_Daily_Wage[@]}

declare -A store_Total_Wage
#str="Day_"
for (( d=1; d<=20; d++ ))
do
        x=${str}${d}
        store_Total_Wage[$x]=0
done




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
		store_Total_Wage[${str}${d}]=$sum
		;;
                "2")
                getWage 2
                getTotalWage $wage
                echo "Day $d         "$wage"         "$sum
		store_Daily_Wage[${str}${d}]=$wage
		store_Total_Wage[${str}${d}]=$sum
                ;;
                *)
                getWage 0
                getTotalWage $wage
                echo "Day $d         "$wage"          "$sum
		store_Daily_Wage[${str}${d}]=$wage
		store_Total_Wage[${str}${d}]=$sum
                ;;
        esac
done
echo "After storing in Dictionary"
echo "Day No        Wage        Total Wage"

for k in ${!store_Daily_Wage[@]}
do
	echo  $k "       " ${store_Daily_Wage[$k]} "       "${store_Total_Wage[$k]}
done
