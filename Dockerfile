FROM --platform=linux/386 i386/alpine

RUN apk update && \
    apk add --no-cache \
    alpine-sdk \
    perl

WORKDIR /csapp
