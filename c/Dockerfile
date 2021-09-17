FROM alpine:latest

RUN apk update \
  && apk add gcc musl-dev

WORKDIR /root/main
CMD sh setup.sh