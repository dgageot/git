# Build:
#   docker build -t dgageot/git .
#
# Run:
#   docker run --rm -v `pwd`:/sources -v $HOME/.ssh:/root/.ssh -ti dgageot/git
#   docker run --rm -v `pwd`:/sources -v $HOME/.ssh:/root/.ssh -ti dgageot/git clone git@github.com:dgageot/jug.git

# DOCKER_VERSION 1.2

FROM google/debian:wheezy
MAINTAINER David Gageot <david@gageot.net>

RUN apt-get update && apt-get install -y git

RUN mkdir /sources
WORKDIR /sources

ENTRYPOINT ["/usr/bin/git"]
