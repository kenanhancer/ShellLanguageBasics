#!/bin/bash

# STRING_ARRAY=("Linux Mint" "Fedora" "Red Hat Linux" "Ubuntu" "Debian")

# for STR in ${STRING_ARRAY[@]}
# do
#     echo $STR
# done

# # or

# DAYS="MONDAY TUESDAY WEDNESDAY THURSDAY FRIDAY SATURDAY SUNDAY"

# for DAY in $DAYS
# do
#     echo $DAY
# done

# # or

# DAYS_V2="MONDAY;TUESDAY;WEDNESDAY;THURSDAY;FRIDAY;SATURDAY;SUNDAY" | tr ';' '\n'

# for DAY in $DAYS_V2
# do
#     echo $DAY
# done

# # or

# DAYS_V3="MONDAY TUESDAY
# WEDNESDAY
# THURSDAY
# FRIDAY
# SATURDAY
# SUNDAY"

# while read DAY; do
#     echo "Day is $DAY"
# done <<< "$DAYS_V3"

# # or

# # DAYS_V4=("MONDAY" "TUESDAY" "WEDNESDAY" "THURSDAY" "FRIDAY" "SATURDAY" "SUNDAY")

# # while read DAY
# # do
# #     echo $DAY
# # done <<< "$DAYS_V4"

# # or

MONTHS=("JANUARY" "FEBRUARY" "MARCH" "APRIL" "MAY" "JUNE" "JULY" "AUGUST" "SEPTEMBER" "OCTOBER" "NOVEMBER" "DECEMBER")

# echo ${MONTHS[@]}

echo ${MONTHS[@]} | tr ' ' '\n' | while read MONTH; do echo $MONTH; done

# or

while read MONTH; do

    echo "Month is $MONTH"

done <<<$(echo ${MONTHS[@]} | tr " " "\n")



# or

# echo "MONDAY TUESDAY WEDNESDAY THURSDAY FRIDAY SATURDAY SUNDAY" | while read DAY;
# do
#     echo $DAY
# done
