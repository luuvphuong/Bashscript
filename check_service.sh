#!/bin/bash
###########################Check service
r=`tput setaf 1`
r1=`tput setaf 2`
N=`tput sgr0`

SERVICE=" ssh keepalived haproxy nginx "    # Them cac dich vu can check vao day
for n in $SERVICE
do
if ps ax | grep -v grep | grep $n > /dev/null
then
echo " OK- $n is running "
else
echo " NOT OK - $n is not running "
fi
done
