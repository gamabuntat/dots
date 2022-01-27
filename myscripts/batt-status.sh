#!/bin/sh

stat=$(cat /sys/class/power_supply/BAT0/status)
[ $stat = 'Charging' ] && echo 'char'
