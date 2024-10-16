#!/bin/bash

HOST="8.8.8.8 10.145.17.13 2.2.2.2"
#ping -c 1 $HOST &> /dev/null
for x in $HOST
do
ping -c 1 $x &> /dev/null	
if [ $? -eq 0 ]; then
    echo "$x is reachable"
else
    echo "$x is unreachable"
fi
done
