FROM alpine:3.23.4@sha256:5b10f432ef3da1b8d4c7eb6c487f2f5a8f096bc91145e68878dd4a5019afde11

RUN apk add --no-cache \
    hledger==1.52-r0 \
    hledger-web==1.52-r0

USER hledger

WORKDIR /data

CMD ["hledger-web", "--serve", "--allow=edit", "--host=0.0.0.0"]
