#!/bin/bash

name=$1
time=$2

while ["$time" -ne 0]; do
        echo "$(date+ "%d.%m.%Y %H:%M") = <$(cat /proc/loadavg)>" >> "$name"
        time=$(("$time" - 1))
        sleep 1
done