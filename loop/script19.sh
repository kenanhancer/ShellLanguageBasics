#!/bin/bash

FRUITS=("apple" "banana" "cherry")

i=0
FRUITS_LENGTH=${#FRUITS[@]}
while [ $i -lt $FRUITS_LENGTH ]
do
    echo ${FRUITS[$i]}
    let i++
done

# or

for FRUIT in ${FRUITS[@]}
do
    echo $FRUIT
done

# or

for (( i=0; i<${#FRUITS[@]}; i++ ))
do
    FRUIT=${FRUITS[$i]}

    echo $FRUIT
done

# or

for USER in "user1" "user2" "user3" "user5"
do
    echo $USER
done

# or

USERS=("user1" "user2" "user3" "user5")

for USER in ${USERS[@]}
do
    echo $USER
done

# or

USERS_MULTILINE=("user1" "user2"
"user3" "user4"
"user5"
"user6")

for USER in ${USERS_MULTILINE[@]}
do
    echo $USER
done

# or

for USER in "user1" \
            "user2" \
            "user3" \
            "user4"
do
    echo $USER
done