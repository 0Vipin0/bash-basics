#! /bin/bash

counter=1

: 'if [ $counter -eq 1  ];then
echo "Count is equal"
fi'

: 'if (( $counter == 10  )); then
echo "Count equal"
elif (( $counter == 1 )); then
echo "Count simple equal"
fi'

age=20
: 'if [ "$age" -gt 18 -a "$age" -lt 40 ]
then
echo "age is correct"
else
echo "age is not correct"
fi'

if (( $age > 18  &&  $age < 40 )); then
echo "age is correct"
else
echo "age is not correct"
fi
