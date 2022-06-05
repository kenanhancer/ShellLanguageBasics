#!/bin/bash

for user in "$(jq -C - '.users[]' ./users.json)"; do

    echo $user
    # userName=$(echo $user | jq -r .userName)
    # description=$(echo $user | jq -r .description)
    # echo "userName: $name and description: $description"
done
