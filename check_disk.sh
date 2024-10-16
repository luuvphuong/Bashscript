#!/bin/bash
THRESHOLD=70
THRESHOLD1=80
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
if [ $USAGE -gt $THRESHOLD ]; then
    echo " Warning: Disk usage is above $THRESHOLD%: $USAGE%" 
elif [ $USAGE -gt $THRESHOLD1 ]; then
    echo " Critical: Disk usage is above $THRESHOLD1%: $USAGE% "
fi

