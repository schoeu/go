#!/bin/base
logpath="/home/doc/wwwroot/docxlog/"

if [ -d $logpath ]
then
    echo "No such dir or file."
    exit 1
fi
rm -rf /home/doc/wwwroot/docxlog/*/*
