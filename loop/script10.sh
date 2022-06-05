#!/bin/bash

MONTHS=("January" "February" "March" "April" "May" "June" "July" "August" "September" "October" "December")

MONTHS_LENGTH="${#MONTHS[@]}"

for (( i=0; i<MONTHS_LENGTH; i++ ))
do
    MONTH=${MONTHS[$i]}
    echo "Month is ${MONTH}"
done

for (( i=0; i<$MONTHS_LENGTH; i++ )); do
    echo "Month is ${MONTHS[$i]}"
done


for MONTH in "January" "February" "March" "April" "May" "June" "July" "August" "September" "October" "December"
do
    echo "Month is $MONTH"
done

echo ${MONTHS[*]}

echo ${MONTHS[@]}