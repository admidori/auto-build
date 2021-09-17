FROM alpine:latest

RUN apk update \
  && apk add make gcc g++

#Dockerfileはdocker-composeよりも前に実行される（＝マウントよりも前にコマンドは実行される）
WORKDIR /root/main
CMD sh setup.sh