#!/bin/bash

>logs.log

files=$(find /var/log/ -maxdepth 1 -name "*.log" -type f)

for file in $files; do
        tail -n 1 "$file" 2>/dev/null >> logs.log
done
