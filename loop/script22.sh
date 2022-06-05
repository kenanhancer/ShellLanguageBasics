#!/bin/bash

# array=("kenan" "enes" "eren")

# while read line; do
#     echo "Item is $line"
# done <<<$array

MONTHS_ARRAY=("JANUARY" "FEBRUARY" "MARCH" "APRIL" "MAY" "JUNE" "JULY" "AUGUST" "SEPTEMBER" "OCTOBER" "NOVEMBER" "DECEMBER")
MONTHS_STRING="JANUARY FEBRUARY MARCH APRIL MAY JUNE JULY AUGUST SEPTEMBER OCTOBER NOVEMBER DECEMBER"

# echo ${MONTHS_ARRAY[@]}
# echo ${MONTHS_ARRAY[*]}
# echo $MONTHS_ARRAY

# while read MONTH
# do
    
#     echo "Month is $MONTH"
    
# done < <(tr " " "\n" <<<$MONTHS_ARRAY)



# while read MONTH
# do
    
#     echo "Month is $MONTH"
    
# done < <(tr " " "\n" <<<$MONTHS_STRING)


while IFS= read -r line
do
    
    echo "Month is $MONTH"
    
done <<<$MONTHS_STRING


# echo $MONTHS | tr " " "\n"

# tr " " "\n" <<<$MONTHS

