FROM ghcr.io/linuxserver/baseimage-alpine-nginx:3.15

ARG BUILD_DATE
ARG VERSION
ARG MASTODON_VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="TheSpad"

ENV RAILS_ENV="production" \
    NODE_ENV="production" \
    PATH="${PATH}:/opt/ruby/bin:/opt/node/bin:/app/www/bin"

RUN \
  apk add -U --upgrade --no-cache \
    ffmpeg \
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
    g++ \
    gcc \
    icu-dev \
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
    MASTODON_VERSION=$(curl -sX GET "https://api.github.com/repos/mastodon/mastodon/releases/latest" \
    | awk '/tag_name/{print $4;exit}' FS='[""]'); \
  fi && \
  curl -s -o \
    /tmp/mastodon.tar.gz -L \
    "https://github.com/mastodon/mastodon/archive/refs/tags/${MASTODON_VERSION}.tar.gz" && \
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
