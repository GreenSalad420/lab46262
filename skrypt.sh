#!/bin/bash

function show_help() {
    echo "Available options:"
    echo "--date, -d   : Display current date"
    echo "--logs [n], -l [n]  : Create [n] log files (default 100)"
    echo "--help, -h   : Show this help message"
}

if [[ $1 == "--date" || $1 == "-d" ]]; then
    date
elif [[ $1 == "--logs" || $1 == "-l" ]]; then
    num_files=${2:-100}
    for ((i=1; i<=num_files; i++))
    do
        echo "Log number: $i" > log_$i.txt
        echo "Script name: skrypt.sh" >> log_$i.txt
        echo "Date: $(date)" >> log_$i.txt
    done
elif [[ $1 == "--help" || $1 == "-h" ]]; then
    show_help
fi