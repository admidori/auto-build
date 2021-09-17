#!/bin/sh
#ディレクトリを指定＝＞複数ファイルなどにも対応できるようにする


if [ "$#" -eq 0 ]; then
    echo "ERROR"
else
    cp $pwd/$1/* /bin/bash/
    docker run -v ./src:/root/main build-container bash
    cat ./src/output.txt