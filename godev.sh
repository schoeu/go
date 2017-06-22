#!/bin/bash

# Tools for easy to change dev vps.
# Have fun.

vpsList='
alafe4 alafe4.test.com,
alafeplat1 plat-1.epc.test.com
'
user="work"
targetDev=$1

if [ $# != 1 ]
then
    echo 'One argument.'
    exit 1
fi

dev=$vpsList | tr ',' '\n' | sed 's/^ //' | grep $targetDev | cut -d" " -f2

ssh $user@$dev


