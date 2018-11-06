FROM alpine:3.8

RUN apk update && \
    apk add --no-cache html2text=1.3.2a-r0

ENTRYPOINT ["html2text"]
