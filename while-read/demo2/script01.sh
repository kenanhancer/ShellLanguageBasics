#!/bin/bash

FILE="username-password-recovery-code.csv"

while IFS=";" read userName identifier oneTime password recoveryCode firstName lastName department location
do
    if [ -z $userName ]; then
        continue 
    fi
    echo "$userName, $identifier, $oneTime, $password, $recoveryCode, $firstName, $lastName, $department, $location"
done < <(tail -n $((`wc -l < $FILE` - 1)) $FILE)

echo "===================================================="

# OR

while IFS=";" read userName identifier oneTime password recoveryCode firstName lastName department location
do
    [ -z $userName ] && continue
    echo "$userName, $identifier, $oneTime, $password, $recoveryCode, $firstName, $lastName, $department, $location"
done < <(tail -n $((`wc -l < $FILE` - 1)) < $FILE)

echo "===================================================="

# OR

while IFS=";" read userName identifier oneTime password recoveryCode firstName lastName department location
do
    echo "$userName, $identifier, $oneTime, $password, $recoveryCode, $firstName, $lastName, $department, $location"
done <<EOF
booker12;9012;12se74;rb9012;Rachel;Booker;Sales;Manchester
grey07;2070;04ap67;lg2070;Laura;Grey;Depot;London
johnson81;4081;30no86;cj4081;Craig;Johnson;Depot;London
jenkins46;9346;14ju73;mj9346;Mary;Jenkins;Engineering;Manchester
smith79;5079;09ja61;js5079;Jamie;Smith;Engineering;Manchester
EOF

echo "===================================================="

# OR

USER_NAMES="Username; Identifier;One-time password;Recovery code;First name;Last name;Department;Location
booker12;9012;12se74;rb9012;Rachel;Booker;Sales;Manchester
grey07;2070;04ap67;lg2070;Laura;Grey;Depot;London
johnson81;4081;30no86;cj4081;Craig;Johnson;Depot;London
jenkins46;9346;14ju73;mj9346;Mary;Jenkins;Engineering;Manchester
smith79;5079;09ja61;js5079;Jamie;Smith;Engineering;Manchester"

while IFS=";" read userName identifier oneTime password recoveryCode firstName lastName department location
do
    echo "$userName, $identifier, $oneTime, $password, $recoveryCode, $firstName, $lastName, $department, $location"
done <<<$(tail -n $((`wc -l <<<$USER_NAMES` - 1)) <<<$USER_NAMES)