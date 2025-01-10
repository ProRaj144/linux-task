#!/bin/bash

# User Authentication
echo "Enter Username:"
read username
echo "Enter Password:"
read -s password

if [[ $username == "admin" && $password == "xyz123" ]]; then
    echo "Authentication Successful"
else
    echo "Authentication Unsuccessful"
    exit 1
fi

# Tax Calculation
echo "Enter Salary:"
read salary

if (( salary < 15000 )); then
    tax=0
elif (( salary > 15000 && salary <= 30000 )); then
    tax=$((salary * 5 / 100))
else
    tax=$((salary * 10 / 100))
fi
echo "Your Tax is: $tax"

# Age Classification
echo "Enter Age:"
read age

if (( age < 13 )); then
    echo "You are a Child"
elif (( age >= 13 && age <= 19 )); then
    echo "You are a Teenager"
else
    echo "You are an Adult"
fi
if (( age > 60 )); then
    echo "You are Oldage"
elif (( age < 13 )); then
    echo "You are a Child"
fi
if (( salary == 15000 )); then
    tax=$((salary * 2 / 100))
elif (( salary > 15000 && salary <= 30000 )); then
    tax=$((salary * 5 / 100))
fi
