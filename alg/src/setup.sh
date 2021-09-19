#!/bin/sh
if [ $input -eq 1 ]; then
    a68g $name.alg < input.txt > output.txt
else
    a68g $name.alg > output.txt
fi