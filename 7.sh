#!/bin/bash

splitted_pathes=$(echo $PATH | tr ":" "\n")

echo "$splitted_pathes" | while IFS= read -r path
do
        pathname=$path
        if [ -e "$path" ]; then
                count_files_in_path=$(find $path -maxdepth 1 -type f | wc -l )
                echo "$pathname => $count_files_in_path"
        fi
done
