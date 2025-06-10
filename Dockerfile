FROM alpine:latest

RUN apk add --no-cache curl bash

RUN curl -L https://github.com/apernet/hysteria/releases/latest/download/hysteria-linux-amd64.tar.gz | tar xz -C /usr/local/bin

COPY config.json /etc/hysteria/config.json

EXPOSE 443/udp

CMD ["hysteria", "server", "-c", "/etc/hysteria/config.json"]
