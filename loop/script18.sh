#!/bin/bash

ARRAY=("ONE" "TWO" "THREE" "FOUR" "FIVE")

echo ${ARRAY[*]}

echo ${ARRAY[@]}

echo ${!ARRAY[*]}

echo ${!ARRAY[@]}

echo ${#ARRAY[*]}

echo ${#ARRAY[@]}

# or

for MONTH in "JANUARY" "FEBRUARY" "MARCH" "APRIL" "MAY" "JUNE" "JULY" "AUGUST" "SEPTEMBER" "OCTOBER" "NOVEMBER" "DECEMBER"
do
    echo "Month is $MONTH"
done

#or

echo "#########################################################################################################"

# for MONTH in "JANUARY FEBRUARY MARCH APRIL MAY JUNE JULY AUGUST SEPTEMBER OCTOBER NOVEMBER DECEMBER"
# do
#     echo "Month is $MONTH"
# done

MONTHS=("JANUARY" "FEBRUARY" "MARCH" "APRIL" "MAY" "JUNE" "JULY" "AUGUST" "SEPTEMBER" "OCTOBER" "NOVEMBER" "DECEMBER")

while read MONTH
do
    
    echo "Month is $MONTH"
    
done <<<$MONTHS 
# $(echo "JANUARY FEBRUARY MARCH APRIL MAY JUNE JULY AUGUST SEPTEMBER OCTOBER NOVEMBER DECEMBER" | tr ' ' '\n')


# or

FRUITS=("apple" "banana" "cherry")

i=0
FRUITS_LENGTH=${#FRUITS[@]}
while [ $i -lt $FRUITS_LENGTH ]
do
    echo ${FRUITS[$i]}
    let i++
done

