# Make sure RUBY_VERSION matches the Ruby version in .ruby-version
ARG RUBY_VERSION=3.3.5
FROM ghcr.io/rails/devcontainer/images/ruby:$RUBY_VERSION

RUN apt-get update -qq && \
  apt-get install --no-install-recommends -y curl libjemalloc2 && \
  rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Enable jemalloc and YJIT
ENV LD_PRELOAD="libjemalloc.so.2" \
  MALLOC_CONF="background_thread:true,metadata_thp:auto,dirty_decay_ms:5000,muzzy_decay_ms:5000,narenas:2" \
  RUBY_YJIT_ENABLE="1"