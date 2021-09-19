FROM alpine:latest

RUN set -x && \
    apk update && \
    apk add --no-cache build-base make && \
    wget https://jmvdveer.home.xs4all.nl/algol68g-2.8.4.tar.gz && \
    tar xvf algol68g-2.8.4.tar.gz && \
    cd algol68g-2.8.4 && \
    ./configure && make install

WORKDIR /root/main
CMD sh setup.sh