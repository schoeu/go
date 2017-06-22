#!/bin/bash

# Tools for easy to change dev vps.
# Have fun.

vpsList='
alafe4 cp01-ala-fe-4.epc.baidu.com,
alafeplat1 cp01-ala-fe-plat-1.epc.baidu.com
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

