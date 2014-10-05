FROM google/debian:wheezy
MAINTAINER David Gageot <david@gageot.net>

# Install git
#
RUN apt-get update -qq
RUN apt-get install -y git

# Set working directory
#
WORKDIR /sources

# Always run git
#
ENTRYPOINT ["/usr/bin/git"]
