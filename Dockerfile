FROM alpine:3.23

RUN apk add --no-cache \
    hledger \
    hledger-web

USER hledger

WORKDIR /data

CMD ["hledger-web", "--serve", "--allow=edit", "--host=0.0.0.0"]
