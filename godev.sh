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
    echo $A
    if [ $# != 1 ]
    then
        echo 'One argument.'
        exit 1
    fi

    dev=$vpsList | tr ',' '\n' | sed 's/^ //' | grep $targetDev | cut -d" " -f2
    echo "Connectting "$user@$dev
    ssh $user@$dev
}

# Process arguments.
while getopts lh: option
do
    echo $option
    case "$option"
    in
        l)
            showList
            exit 1
            ;;
        \?|h)
            showHelp
            exit 1
            ;;
        *)
            loginDev $OPTARG
            exit 0
            ;;
    esac
done








