#! /bin/bash

echo $1

if [[ "$1" == *".py" ]]; then
    exec python3 $1
fi

if [[ "$1" == *".sh" ]]; then
    exec bash $1
fi

if [[ "$1" == *".cc" ]]; then
    exec cat $1
fi