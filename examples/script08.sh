#!/bin/bash

IP_ADDRESSES="192.168.8.1,192.168.8.2,192.168.8.3,192.168.8.4"

IFS="," read -rA IP_ARRAY <<< $IP_ADDRESSES

echo "${IP_ARRAY[2]}"