#!/bin/bash

HOST="2.2.2.2 10.145.17.13 8.8.8.8"
#ping -c 1 $HOST &> /dev/null
for x in $HOST
do
if ping -c 1 $x &> /dev/null 
then
    echo "$x is reachable"
else
    echo "$x is unreachable"
fi
done
