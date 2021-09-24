FROM alpine:latest

RUN apk update \
  && apk add ghc gcc musl-dev

WORKDIR /root/main
CMD sh setup.sh
