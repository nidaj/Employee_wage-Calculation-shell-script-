#!/bin/bash
echo "Welcome to Employee Wage Computation Program"

attend=$((RANDOM%2))
full_wage=160
no_wage=0

if (( $attend == 0 ))
then
        echo "Day No:" "Wage"
        echo "Day 1  "  $full_wage
else
        echo "Day No:" "Wage"
        echo "Day 1  "  $no_wage
fi

