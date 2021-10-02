#!/bin/sh
ghc $name.hs
if [ $input -eq 1 ]; then
    ./$name < input.txt > output.txt
else
    ./$name > output.txt
fi
rm $name
