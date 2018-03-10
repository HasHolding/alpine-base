FROM alpine:3.7

LABEL maintainer "Levent SAGIROGLU <LSagiroglu@gmail.com>"

RUN apk add --update --no-cache ca-certificates tzdata && \	
    update-ca-certificates && \
    cp /usr/share/zoneinfo/Europe/Istanbul /etc/localtime && \
    echo "Europe/Istanbul" >  /etc/timezone && \
    apk del tzdata

VOLUME /opt
