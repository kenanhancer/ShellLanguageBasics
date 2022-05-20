#!/bin/bash

# REPOS=$(aws codecommit list-repositories)

# echo $REPOS | jq -r '.repositories[].repositoryName' | while read name ; do
#     git clone ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/$name
# done

cat ./repositories.json | jq -r '.repositories[].repositoryName' | while read name; do echo "Repository name is $name"; done
