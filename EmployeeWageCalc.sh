#!/bin/bash
echo "Welcome to Employee Wage Computation Program"

attend=$((RANDOM%3))
full_wage=160
half_wage=80
no_wage=0

case "$attend" in
        "1")
        echo "Day No:" "Wage"
        echo "Day 1  "  $full_wage
        ;;
        "2")
        echo "Day No:" "Wage"
        echo "Day 1  "  $half_wage
        ;;
        *)
        echo "Day No:" "Wage"
        echo "Day 1  "  $no_wage
        ;;
esac

