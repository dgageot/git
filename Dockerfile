# Build:
#   docker build -t dgageot/git .
#
# Run:
#   docker run --rm -ti dgageot/git version
#   docker run --rm -v `pwd`:/src -v ~/.ssh:/root/.ssh -ti dgageot/git clone git@github.com:dgageot/jug.git

FROM ubuntu:14.10
MAINTAINER David Gageot <david@gageot.net>

RUN apt-get update && apt-get install -y git=1:2.1.0-1

VOLUME ["/src"]
WORKDIR /src

ENTRYPOINT ["/usr/bin/git"]
