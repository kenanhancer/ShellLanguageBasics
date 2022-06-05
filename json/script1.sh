#!/bin/bash

USERS=$(jq -C '.users[]' ./users.json)

for user in $USERS; do

    echo $user
    # userName=$(echo $user | jq -r .userName)
    # description=$(echo $user | jq -r .description)
    # echo "$userName has id $description"
done
