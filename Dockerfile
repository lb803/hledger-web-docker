FROM alpine:3.24.0@sha256:a2d49ea686c2adfe3c992e47dc3b5e7fa6e6b5055609400dc2acaeb241c829f4

RUN apk add --no-cache \
    hledger==1.52-r0 \
    hledger-web==1.52-r0

USER hledger

WORKDIR /data

CMD ["hledger-web", "--serve", "--allow=edit", "--host=0.0.0.0"]
