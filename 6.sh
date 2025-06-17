#!/bin/bash

if [[ -n "$FOO" && -n "$BAR" && "$FOO" -eq 5 && "$BAR" -eq 1 ]]; then
        exit 1
fi

timer=10

while [[ "$timer" -ne 0 ]]; do
        if [[ -e "fix.txt" ]]; then
                echo "Файл есть"
                break
        fi

        sleep 0.1
        timer=$(("$timer" - 1))
done
