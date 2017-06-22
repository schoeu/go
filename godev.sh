#!/bin/bash

# Tools for easy to change dev vps.
# Have fun.

vpsList='
alafe4 alafe4.test.com,
alafeplat1 plat-1.epc.test.com
'
user="work"
# targetDev=$1


# Show the dev list.
showList(){
    echo $vpsList | tr ',' '\n' | sed 's/^ //'
}

# Show help infos.
showHelp(){
    echo "Usage: go [-li]"
    echo "       go alafe4"
}

# Login dev
loginDev(){
    if [ $# != 1 ]
    then
        echo 'Need one argument.'
        exit 1
    fi

    dev=$vpsList | tr ',' '\n' | sed 's/^ //' | grep $1 | cut -d" " -f2
    echo "Connectting "$user@$dev
    ssh $user@$dev
}

# Process arguments.
while getopts lh: option
do
    case "$option"
    in
        l)
            showList
            exit 1
            ;;
        h)
            showHelp
            exit 1
            ;;
    esac
done
if [ $OPTIND -eq 1 ]
then
    loginDev $1

fi







