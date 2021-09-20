#!/bin/sh
if [ $input -eq 1 ]; then
    go run $name.go < input.txt > output.txt
else
    go run $name.go > output.txt
fi