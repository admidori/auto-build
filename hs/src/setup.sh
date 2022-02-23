#!/bin/sh
ghc $name.hs
if [ $exec -eq 0 ]; then
    ./$name > output.txt
else
		./$name
fi
