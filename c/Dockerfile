FROM alpine:latest

RUN apk update \
  && apk add make gcc musl-dev

WORKDIR /root/main
CMD sh setup.sh