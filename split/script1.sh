#!/bin/bash

INPUT="bla@some.com;john@home.com"

MAILS=$(echo $INPUT | tr ';' '\n')

for MAIL in $MAILS; do
    echo "[$MAIL]"
done
