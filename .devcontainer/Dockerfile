# syntax = docker/dockerfile:1

# Make sure RUBY_VERSION matches the Ruby version in .ruby-version and Gemfile
ARG RUBY_VERSION=3.3.2
FROM registry.docker.com/library/ruby:$RUBY_VERSION-slim-bookworm

# Install packages needed to build gems and node modules
RUN apt-get update -qq && \
  export DEBIAN_FRONTEND=noninteractive && \
  apt-get install --no-install-recommends -y apt-utils build-essential curl git libpq-dev libvips node-gyp pkg-config python-is-python3 \
  iproute2 openssh-client postgresql-client vim libjemalloc2 gnupg2 direnv fzy \
  firefox-esr \
  && apt-get clean

# Install JavaScript dependencies
ARG NODE_VERSION=20.14.0
ARG YARN_VERSION=1.22.22
ENV PATH=/usr/local/node/bin:$PATH
RUN curl -sL https://github.com/nodenv/node-build/archive/master.tar.gz | tar xz -C /tmp/ && \
  /tmp/node-build-master/bin/node-build "${NODE_VERSION}" /usr/local/node && \
  npm install -g yarn@$YARN_VERSION && \
  rm -rf /tmp/node-build-master

# Install commitizen
RUN npm install -g commitizen cz-conventional-changelog
RUN echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc

# Install default Ruby gems
RUN gem install bundler rails foreman rubocop solargraph

# Enable jemalloc and YJIT
ENV LD_PRELOAD="libjemalloc.so.2" \
  MALLOC_CONF="background_thread:true,metadata_thp:auto,dirty_decay_ms:5000,muzzy_decay_ms:5000,narenas:2" \
  RUBY_YJIT_ENABLE="1"

# Install Starship
RUN curl -sS https://starship.rs/install.sh | sh -s -- --yes

# Install zinit
RUN bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

WORKDIR /workspace
