#!/bin/bash

search_path() {
    echo "$PATH" |
    tr ":" "\n" |
    grep -xq "$1"
}

install_dir=("$HOME/bin" "/usr/local/bin" "${PATH%%:*}")

for i in "${install_dir[@]}"
do
    if search_path "$i"; then
        echo ok
    fi
done
