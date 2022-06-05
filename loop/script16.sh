#!/bin/bash

DATABASES=("DB_ONE" "DB_TWO" "DB_THREE" "DB_FOUR")

# for DB in ${DATABASES[@]}
# do
#     echo $DB
# done

# or

while read DB
do
    echo $DB
done < $DATABASES

# or

# for DB in "DB_ONE" "DB_TWO" "DB_THREE" "DB_FOUR"
# do
#     echo $DB
# done

# # or

# DB_ARRAY="DB_ONE DB_TWO DB_THREE DB_FOUR"

# for DB in $DB_ARRAY
# do
#   echo "$DB"
# done

# # or

# for DB in $DB_ARRAY
# do
#     echo $DB
# done
