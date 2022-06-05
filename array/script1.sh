#!/bin/bash

set -e #Stop on any errors

function getUserInfo() {
    userName="user1"
    userId="01"
    echo $userId $userName
}

read userId userName <<<$(getUserInfo)

echo "userId = $userId"
echo "userName = $userName"
