#!/bin/bash

if [[ $1 == "--date" ]]; then
    date
elif [[ $1 == "--logs" ]]; then
    num_files=${2:-100}
    for ((i=1; i<=num_files; i++))
    do
        echo "Log number: $i" > log_$i.txt
        echo "Script name: skrypt.sh" >> log_$i.txt
        echo "Date: $(date)" >> log_$i.txt
    done
fi