# syntax=docker/dockerfile:1

FROM ghcr.io/linuxserver/baseimage-alpine-nginx:3.20

ARG BUILD_DATE
ARG VERSION
ARG MASTODON_VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="thespad"

ENV RAILS_ENV="production" \
    NODE_ENV="production" \
    PATH="${PATH}:/app/www/bin" \
    S6_STAGE2_HOOK="/init-hook"

RUN \
  apk add --no-cache \
    ffmpeg \
    file \
    imagemagick \
    libpq \
    libidn \
    nodejs \
    ruby \
    ruby-bundler \
    ruby-rdoc \
    yaml && \
  apk add --no-cache --virtual=build-dependencies \
    build-base \
    icu-dev \
    libidn-dev \
    libpq-dev \
    libxml2-dev \
    libxslt-dev \
    linux-headers \
    npm \
    openssl-dev \
    ruby-dev \
    yaml-dev && \
  echo "**** install mastodon ****" && \
  mkdir -p /app/www && \
  if [ -z ${MASTODON_VERSION+x} ]; then \
    MASTODON_VERSION=$(curl -sX GET "https://api.github.com/repos/mastodon/mastodon/releases/latest" \
    | awk '/tag_name/{print $4;exit}' FS='[""]'); \
  fi && \
  curl -s -o \
    /tmp/mastodon.tar.gz -L \
    "https://github.com/mastodon/mastodon/archive/${MASTODON_VERSION}.tar.gz" && \
  tar xf \
    /tmp/mastodon.tar.gz -C \
    /app/www/ --strip-components=1 && \
  cd /app/www && \
  bundle config set --local deployment 'true' && \
  bundle config set --local without 'development test exclude' && \
  bundle config set silence_root_warning true && \
  bundle install -j"$(nproc)" --no-cache && \
  npm install -g corepack && \
  corepack enable && \
  yarn workspaces focus --production @mastodon/mastodon && \
  ACTIVE_RECORD_ENCRYPTION_DETERMINISTIC_KEY=precompile_placeholder \
  ACTIVE_RECORD_ENCRYPTION_KEY_DERIVATION_SALT=precompile_placeholder \
  ACTIVE_RECORD_ENCRYPTION_PRIMARY_KEY=precompile_placeholder \
  OTP_SECRET=precompile_placeholder \
  SECRET_KEY_BASE=precompile_placeholder \
  bundle exec rails assets:precompile && \
  bundle exec bootsnap precompile --gemfile app/ lib/ && \
  rm -rf /app/www/node_modules && \
  cd streaming && \
  yarn workspaces focus --production @mastodon/streaming && \
  printf "Linuxserver.io version: ${VERSION}\nBuild-date: ${BUILD_DATE}" > /build_version && \
  echo "**** cleanup ****" && \
  yarn cache clean && \
  apk del --purge \
    build-dependencies && \
  # Remove assets not needed in runtime because they were compiled & copied to public
  rm -r \
    /app/www/app/javascript/fonts \
    /app/www/app/javascript/icons \
    /app/www/app/javascript/styles && \
  rm -rf \
    # Remove vendored sources for building native extensions.
    /app/www/vendor/bundle/ruby/*/gems/hiredis-*/vendor/hiredis \
    /app/www/vendor/bundle/ruby/*/gems/nokogiri-*/gumbo-parser \
    /app/www/vendor/bundle/ruby/*/gems/nokogiri-*/patches \
    /app/www/vendor/bundle/ruby/*/gems/pghero-*/app/assets \
    # Remove build logs, temp files, and cache.
    /app/www/vendor/bundle/ruby/*/build_info/ \
    /app/www/vendor/bundle/ruby/*/cache/ \
    /app/www/tmp/cache \
    $HOME/.bundle/cache \
    $HOME/.composer \
    /tmp/* && \
	find /app/www/vendor/bundle/ruby/*/extensions/ \( -name gem_make.out -o -name mkmf.log \) -delete && \
  # Remove tests, documentations and other useless files.
	find /app/www/vendor/bundle/ruby/*/gems/ \( -name 'doc' \
    -o -name 'spec' \
    -o -name 'test' \) \
		-type d -maxdepth 2 -exec rm -fr "{}" + && \
	find /app/www/vendor/bundle/ruby/*/gems/ \( -name 'README*' \
    -o -name 'CHANGELOG*' \
    -o -name 'CONTRIBUT*' \
    -o -name '*LICENSE*' \
    -o -name 'Rakefile' \
    -o -name '.*' \) \
    -type f -delete

COPY root/ /

EXPOSE 80 443

VOLUME /config
