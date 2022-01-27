#!/bin/bash

minutes=$1
sec=$[ minutes * 60 ] 
m=$minutes
s=0

while [ $sec -ne 0 ]
do

    time="${m}m${s}s "
    echo "${time}" > /home/gamabunta/myscripts/tmr/timer
    polybar-msg hook tmr 2 > /dev/null

    if [ $s -eq 0 ]
    then
        m=$[ m - 1 ]
        s=60
    fi

    s=$[ s - 1 ]
    sleep 1
    sec=$[ sec - 1 ]
done


_notify() {
    message="timer elapsed ${arg}"
    dunstify -u critical "$message"
}

_notify
polybar-msg hook tmr 1 > /dev/null

