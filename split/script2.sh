#!/bin/bash

INPUT="bla@some.com;john@home.com"

for MAIL in $(echo $INPUT | tr ';' '\n'); do
    echo "[$MAIL]"
done
