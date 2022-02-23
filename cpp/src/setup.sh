#!/bin/sh
g++ $name.cpp
if [ $exec -eq 0 ]; then
    ./a.out > output.txt
else
	./a.out
fi
