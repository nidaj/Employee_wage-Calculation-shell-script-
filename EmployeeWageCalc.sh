#!/bin/bash
echo "Welcome to Employee Wage Computation Program"

sum=0
full_wage=160
half_wage=80
no_wage=0

echo "Day No        Wage        Total Wage"
for (( d=1; d<=20; d++ ))
do
        attend=$((RANDOM%3))
        case "$attend" in
                "1")
                sum=$(( $sum + $full_wage ))
                echo "Day $d         "$full_wage"        "$sum
                ;;
                "2")
                sum=$(( $sum + $half_wage ))
                echo "Day $d         "$half_wage"         "$sum
                ;;
                *)
                sum=$(( $sum + $half_wage ))
                echo "Day $d         "$no_wage"          "$sum
                ;;
        esac
done

