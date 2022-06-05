#!/bin/bash

set -e #Stop on any errors

read -r name1 name2 name3 <<<$(echo "kenan" "enes" "eren")

echo "$name1 | $name2 | $name3"
