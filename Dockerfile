FROM ubuntu:18.04

LABEL "io.cycloid"="Cycloid" \
      "description"="A docker image of html2text command-line tool" \
      "reference"="http://www.mbayer.de/html2text/" \
      "repository.git"="git@github.com:cycloidio/docker-image-html2text.git" \
      "repository.github"="https://github.com/cycloidio/docker-image-html2text" \
      "maintainer"="contact@cycloid.io"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y html2text=1.3.2a-21 && \
    apt-get clean

ENTRYPOINT ["html2text"]
