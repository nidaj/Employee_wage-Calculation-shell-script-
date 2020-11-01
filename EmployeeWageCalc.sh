#!/bin/bash
echo "Welcome to Employee Wage Computation Program"

attend=$((RANDOM%3))
full_wage=160
half_wage=80
no_wage=0

if (( $attend == 1 ))
then
        echo "Day No:" "Wage"
        echo "Day 1  "  $full_wage
elif (( $attend == 2 ))
then
        echo "Day No:" "Wage"
        echo "Day 1  "  $half_wage
else
        echo "Day No:" "Wage"
        echo "Day 1  "  $no_wage
fi

