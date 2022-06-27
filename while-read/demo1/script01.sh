#!/bin/bash

FILE="username.csv"

while IFS=";" read userName identifier firstName lastName
do
    if [ -z $userName ]; then
        continue 
    fi
    echo "$userName, $identifier, $firstName, $lastName"
done < <(tail -n $((`wc -l < $FILE` - 1)) $FILE)

echo "===================================================="

# OR

while IFS=";" read userName identifier firstName lastName
do
    [ -z $userName ] && continue
    echo "$userName, $identifier, $firstName, $lastName"
done < <(tail -n $((`wc -l < $FILE` - 1)) < $FILE)

echo "===================================================="

# OR

while IFS=";" read userName identifier firstName lastName
do
    echo "$userName, $identifier, $firstName, $lastName"
done <<EOF
booker12;9012;Rachel;Booker
grey07;2070;Laura;Grey
johnson81;4081;Craig;Johnson
jenkins46;9346;Mary;Jenkins
smith79;5079;Jamie;Smith
EOF

echo "===================================================="

# OR

USER_NAMES="Username; Identifier;First name;Last name
booker12;9012;Rachel;Booker
grey07;2070;Laura;Grey
johnson81;4081;Craig;Johnson
jenkins46;9346;Mary;Jenkins
smith79;5079;Jamie;Smith"

while IFS=";" read userName identifier firstName lastName
do
    echo "$userName, $identifier, $firstName, $lastName"
done <<<$(tail -n $((`wc -l <<<$USER_NAMES` - 1)) <<<$USER_NAMES)