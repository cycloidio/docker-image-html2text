# Docker Image html2text

This repository contains a Dockerfile for creating a docker Alpine image with [html2text](http://www.mbayer.de/html2text/) command-line tool.

The repository also contains a _Makefile_ for just wrapping the most used commands into _makefile targets_, like _build the docker image_, etc.

## How to use it

The docker image expose the _html2text_ binary (a.k.a. _ENTRYPOINT_) so, when you run the docker image you can the parameters to such binary invocation, for example:

`docker run --rm cycloid/html2text:{TAG} -version`

Where `{TAG}` is the docker tag which specifies the _html2text command-line_ version.

## Important considerations

Currently we decided not to push any docker image with previous versions than the last one when this repo was created nor to push any image without a docker tag, as you should know it would defaults to latest, because we believe that we should always know which version is going to be executed rather than executing one that is different depending on the time.

## License

The MIT License (MIT).

Copyright (c) 2018 [cycloid.io](https://cycloid.io)

Read the LICENSE file for more information.
