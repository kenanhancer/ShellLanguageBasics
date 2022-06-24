#!/bin/bash

hrData="Name,Hire Date,Salary,Sick Days remaining
Graham Chapman,03/15/14,50000.00,10
John Cleese,06/01/15,65000.00,8
Eric Idle,05/12/14,45000.00,10
Terry Jones,11/01/13,70000.00,3
Terry Gilliam,08/12/14,48000.00,7
Michael Palin,05/23/13,66000.00,8"



while IFS="," read -r name hireDate salary sickDaysRemaining
do
    echo -e "name is $name, hireDate is $hireDate, salary is $salary, sickDaysRemaining is $sickDaysRemaining"
done <<<$(echo "$hrData" | tail -n $((`echo "$hrData" | wc -l` - 1)))

echo
echo

while IFS="," read -r name hireDate salary sickDaysRemaining
do
    echo -e "name is $name, hireDate is $hireDate, salary is $salary, sickDaysRemaining is $sickDaysRemaining"
done <<<$(tail -n $((`wc -l <<<$hrData` - 1)) <<<$hrData)

while IFS="," read -r name hireDate salary sickDaysRemaining
do
    echo -e "name is $name, hireDate is $hireDate, salary is $salary, sickDaysRemaining is $sickDaysRemaining"
done < <(wc -l <<<$hrData | read n; tail -n $n <<<$hrData)
