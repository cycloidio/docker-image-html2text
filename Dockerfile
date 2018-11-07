FROM ubuntu:18.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y html2text=1.3.2a-21 && \
    apt-get clean

ENTRYPOINT ["html2text"]
