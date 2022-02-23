#!/bin/sh
gcc $name.c
if [ $exec -eq 0 ]; then
    ./a.out > output.txt
fi
rm a.out
