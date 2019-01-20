FROM alpine:latest

ENV DOCKERIZE_VERSION=v0.6.1
RUN apk add --no-cache bash wget
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

COPY entry.sh /
WORKDIR /
ENTRYPOINT ["/entry.sh"]
