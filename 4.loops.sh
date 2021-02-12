#! /bin/bash

# Run while the condition is true
: 'number=10
while [[ $number > 1 ]]; do
echo $number
number=$(( number-1  )) 
done'

# Run until condition becomes true
: 'number=1
until [ "$number" -ge 10 ]; do
echo $number
number=$(( number+1 ))
done'

: 'for i in 1 2 3 4 5
do
echo $i
done'

# Simple one increment
: 'for i in {1..100}
do
echo $i
done'

# Two increment
: 'for i in {1..100..2}
do
echo $i
done'

# C-type loop
: 'for (( i=0; i<5; i++ ))
do
echo $i
done'


: 'for (( i=0; i<10; i++ ))
do
if (( $i > 5 )); then
break
fi
echo $i
done'

for (( i=0; i<10; i++ ))
do
if (( $i < 3 )) || (( $i > 7 )); then
continue
fi
echo $i
done
