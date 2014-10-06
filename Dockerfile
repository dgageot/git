FROM google/debian:wheezy
MAINTAINER David Gageot <david@gageot.net>
ENV DEBIAN_FRONTEND noninteractive

# Install git
#
RUN apt-get update -qq
RUN apt-get install -yqq git

# Set working directory
#
WORKDIR /sources

# Always run git
#
ENTRYPOINT ["/usr/bin/git"]
