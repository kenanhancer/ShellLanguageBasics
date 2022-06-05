#!/bin/bash

set -e #Stop on any errors

NAMES_ARRAY=$(echo "kenan" "enes" "eren")

read name1 name2 name3 <<<$NAMES_ARRAY
# read -r before delim after <<<$(echo "kenan" "enes" "eren")
echo "$name1 | $name2 | $name3"



