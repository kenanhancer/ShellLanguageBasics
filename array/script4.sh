#!/bin/bash

set -e #Stop on any errors

{ read -r name1; } <<<$(echo "kenan" "enes" "eren")

echo "$name1"
