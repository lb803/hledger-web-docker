FROM alpine:3.23.3@sha256:1529d13528ed05668b2038ffab807ac8633ad6adfe6be8901adda62411f70d29

RUN apk add --no-cache \
    hledger==1.52-r0 \
    hledger-web==1.52-r0

USER hledger

WORKDIR /data

CMD ["hledger-web", "--serve", "--allow=edit", "--host=0.0.0.0"]
