#!/bin/bash

for file in "$@"
do
        if [[ ! -f $file ]]; then
                echo "$file => not found"
        else 
                lines_in_file=$(wc -l < "$file")
                echo "$file => $lines_in_file"
        fi
done
