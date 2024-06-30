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
elif [[ $1 == "--help" ]]; then
    echo "Available options:"
    echo "--date      : Display current date"
    echo "--logs [n]  : Create [n] log files (default 100)"
    echo "--help      : Show this help message"
fi