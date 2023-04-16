# syntax=docker/dockerfile:1

FROM ghcr.io/linuxserver/baseimage-alpine-nginx:3.17

ARG BUILD_DATE
ARG VERSION
ARG MASTODON_VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="TheSpad"

ENV RAILS_ENV="production" \
    NODE_ENV="production" \
    NODE_OPTIONS="--openssl-legacy-provider" \
    PATH="${PATH}:/app/www/bin" \
    S6_STAGE2_HOOK="/init-hook"

RUN \
  apk add -U --upgrade --no-cache \
    ffmpeg \
    file \
    icu-libs \ 
    imagemagick \
    libpq \
    libidn \
    nodejs \
    ruby \
    ruby-bundler \
    yarn && \
  apk add --no-cache --virtual=build-dependencies \
    build-base \
    icu-dev \
    jq \
    libidn-dev \    
    libpq-dev \
    libxml2-dev \
    libxslt-dev \
    openssl-dev \
    npm \
    ruby-dev && \
  echo "**** install mastodon ****" && \
  mkdir -p /app/www && \
  if [ -z ${MASTODON_VERSION+x} ]; then \
    MASTODON_VERSION=$(curl -sX GET https://api.github.com/repos/glitch-soc/mastodon/commits/main \
    | jq -r '. | .sha'); \
  fi && \
  curl -s -o \
    /tmp/mastodon.tar.gz -L \
    "https://github.com/glitch-soc/mastodon/archive/${MASTODON_VERSION}.tar.gz" && \
  tar xf \
    /tmp/mastodon.tar.gz -C \
    /app/www/ --strip-components=1 && \
  cd /app/www && \
  bundle config set --local deployment 'true' && \
  bundle config set --local without 'development test' && \
  bundle config set silence_root_warning true && \
  bundle install -j"$(nproc)" && \
  yarn install --pure-lockfile && \
  OTP_SECRET=precompile_placeholder SECRET_KEY_BASE=precompile_placeholder rails assets:precompile && \
  echo "**** cleanup ****" && \
  apk del --purge \
    build-dependencies && \
  yarn cache clean && \
  rm -rf \
    /tmp/*

COPY root/ /

EXPOSE 80 443

VOLUME /config
