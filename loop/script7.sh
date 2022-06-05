#!/bin/bash

NAMES=("kenan" "enes" "eren")

# echo ${NAMES[@]}

read name1 name2 name3 <<<${NAMES[@]}

echo "$name1 | $name2 | $name3"

# for NAME in ${NAMES[@]}
# do
#     echo "Name is $NAME"
# done

# for NAME in ${NAMES[@]};do
#     echo "Name is $NAME"
# done
