#!/bin/bash

path=$1
to_path=$2

mkdir -p "$to_path" 2>/dev/null

if [ -d "$path" ]; then
        from_dir_paths=$(find "$path" -mindepth 1 -maxdepth 1 -type d)
        for from_dir_path in $from_dir_paths; do
                dir_name=$(basename "$from_dir_path")
                count=$(find "$from_dir_path" -mindepth 1 -maxdepth 1 | wc -l)
                echo "$count" > "$to_path/$dir_name"
        done
        echo "$(find "$to_path" -mindepth 1 -maxdepth 1 | wc -l)"
else
        exit 1
fi