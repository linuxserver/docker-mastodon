<!-- DO NOT EDIT THIS FILE MANUALLY -->
<!-- Please read https://github.com/linuxserver/docker-mastodon/blob/glitch/.github/CONTRIBUTING.md -->
[![linuxserver.io](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/linuxserver_medium.png)](https://linuxserver.io)

[![Blog](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=Blog)](https://blog.linuxserver.io "all the things you can do with our containers including How-To guides, opinions and much more!")
[![Discord](https://img.shields.io/discord/354974912613449730.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=Discord&logo=discord)](https://discord.gg/YWrKVTn "realtime support / chat with the community and the team.")
[![Discourse](https://img.shields.io/discourse/https/discourse.linuxserver.io/topics.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=discourse)](https://discourse.linuxserver.io "post on our community forum.")
[![Fleet](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=Fleet)](https://fleet.linuxserver.io "an online web interface which displays all of our maintained images.")
[![GitHub](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitHub&logo=github)](https://github.com/linuxserver "view the source for all of our repositories.")
[![Open Collective](https://img.shields.io/opencollective/all/linuxserver.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=Supporters&logo=open%20collective)](https://opencollective.com/linuxserver "please consider helping us by either donating or contributing to our budget")

The [LinuxServer.io](https://linuxserver.io) team brings you another container release featuring:

* regular and timely application updates
* easy user mappings (PGID, PUID)
* custom base image with s6 overlay
* weekly base OS updates with common layers across the entire LinuxServer.io ecosystem to minimise space usage, down time and bandwidth
* regular security updates

Find us at:

* [Blog](https://blog.linuxserver.io) - all the things you can do with our containers including How-To guides, opinions and much more!
* [Discord](https://discord.gg/YWrKVTn) - realtime support / chat with the community and the team.
* [Discourse](https://discourse.linuxserver.io) - post on our community forum.
* [Fleet](https://fleet.linuxserver.io) - an online web interface which displays all of our maintained images.
* [GitHub](https://github.com/linuxserver) - view the source for all of our repositories.
* [Open Collective](https://opencollective.com/linuxserver) - please consider helping us by either donating or contributing to our budget

# [linuxserver/mastodon](https://github.com/linuxserver/docker-mastodon)

[![Scarf.io pulls](https://scarf.sh/installs-badge/linuxserver-ci/linuxserver%2Fmastodon?color=94398d&label-color=555555&logo-color=ffffff&style=for-the-badge&package-type=docker)](https://scarf.sh)
[![GitHub Stars](https://img.shields.io/github/stars/linuxserver/docker-mastodon.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/linuxserver/docker-mastodon)
[![GitHub Release](https://img.shields.io/github/release/linuxserver/docker-mastodon.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/linuxserver/docker-mastodon/releases)
[![GitHub Package Repository](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitHub%20Package&logo=github)](https://github.com/linuxserver/docker-mastodon/packages)
[![GitLab Container Registry](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitLab%20Registry&logo=gitlab)](https://gitlab.com/linuxserver.io/docker-mastodon/container_registry)
[![Quay.io](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=Quay.io)](https://quay.io/repository/linuxserver.io/mastodon)
[![Docker Pulls](https://img.shields.io/docker/pulls/linuxserver/mastodon.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=pulls&logo=docker)](https://hub.docker.com/r/linuxserver/mastodon)
[![Docker Stars](https://img.shields.io/docker/stars/linuxserver/mastodon.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=stars&logo=docker)](https://hub.docker.com/r/linuxserver/mastodon)
[![Jenkins Build](https://img.shields.io/jenkins/build?labelColor=555555&logoColor=ffffff&style=for-the-badge&jobUrl=https%3A%2F%2Fci.linuxserver.io%2Fjob%2FDocker-Pipeline-Builders%2Fjob%2Fdocker-mastodon%2Fjob%2Fglitch%2F&logo=jenkins)](https://ci.linuxserver.io/job/Docker-Pipeline-Builders/job/docker-mastodon/job/glitch/)

[Mastodon](https://github.com/mastodon/mastodon/) is a free, open-source social network server based on ActivityPub where users can follow friends and discover new ones..

[![mastodon](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/mastodon-banner.png)](https://github.com/mastodon/mastodon/)

## Supported Architectures

We utilise the docker manifest for multi-platform awareness. More information is available from docker [here](https://distribution.github.io/distribution/spec/manifest-v2-2/#manifest-list) and our announcement [here](https://blog.linuxserver.io/2019/02/21/the-lsio-pipeline-project/).

Simply pulling `lscr.io/linuxserver/mastodon:glitch` should retrieve the correct image for your arch, but you can also pull specific arch images via tags.

The architectures supported by this image are:

| Architecture | Available | Tag |
| :----: | :----: | ---- |
| x86-64 | ✅ | amd64-\<version tag\> |
| arm64 | ✅ | arm64v8-\<version tag\> |
| armhf | ❌ | |

## Version Tags

This image provides various versions that are available via tags. Please read the descriptions carefully and exercise caution when using unstable or development tags.

| Tag | Available | Description |
| :----: | :----: |--- |
| latest | ✅ | Stable releases. |
| develop | ✅ | Pre-releases *only*. |
| glitch | ✅ | [glitch-soc](https://github.com/glitch-soc/mastodon) fork releases. |

## Application Setup

We provide aliases for the common commands that execute in the correct context so that environment variables from secrets are available to them:

* To generate keys for `SECRET_KEY_BASE` & `OTP_SECRET` run `docker run --rm -it --entrypoint /bin/bash lscr.io/linuxserver/mastodon:glitch generate-secret` once for each.

* To generate keys for `VAPID_PRIVATE_KEY` & `VAPID_PUBLIC_KEY` run `docker run --rm -it --entrypoint /bin/bash lscr.io/linuxserver/mastodon:glitch generate-vapid`

* To generate keys for `ACTIVE_RECORD_ENCRYPTION_DETERMINISTIC_KEY`, `ACTIVE_RECORD_ENCRYPTION_KEY_DERIVATION_SALT`, & `ACTIVE_RECORD_ENCRYPTION_PRIMARY_KEY` run `docker run --rm -it --entrypoint /bin/bash lscr.io/linuxserver/mastodon:glitch generate-active-record`

Both of the secret generation aliases above can be run without any other setup having been carried out.

* To use `tootctl` you can run something like `docker exec -it lscr.io/linuxserver/mastodon /tootctl <command>`

Using `tootctl` requires you to complete the initial Mastodon configuration first.

This container *requires* separate postgres and redis instances to run.

We support all of the official [environment variables](https://docs.joinmastodon.org/admin/config) for configuration. In place of adding them all to your run/compose you can use an env file such as [this example](https://github.com/mastodon/mastodon/blob/main/.env.production.sample) from the upstream project.

For more information check out the [mastodon documentation](https://docs.joinmastodon.org/).

### Running separate sidekiq instances

It is currently only supported to run a single queue per container instance *or* all queues in a single container instance.

All containers must share the same `/config` mount and be on a common docker network.

### NO_CHOWN Option

On larger Mastodon instances, our init process to verify that permissions are set correctly can noticeably slow down the container startup. If you are experiencing this, you can set `NO_CHOWN` to `true` to skip that step of the init.

*Do NOT set this on first run of the container. If you enable this option you are taking full responsibility for ensuring that the permissions in your /config mount are correct. If you're even slightly unsure, don't set it.*

### Strict reverse proxies

This image automatically redirects to https with a self-signed certificate. If you are using a reverse proxy which validates certificates, you need to [disable this check for the container](https://docs.linuxserver.io/faq#strict-proxy).

## Usage

To help you get started creating a container from this image you can either use docker-compose or the docker cli.

### docker-compose (recommended, [click here for more info](https://docs.linuxserver.io/general/docker-compose))

```yaml
---
services:
  mastodon:
    image: lscr.io/linuxserver/mastodon:glitch
    container_name: mastodon
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
      - LOCAL_DOMAIN=example.com
      - REDIS_HOST=redis
      - REDIS_PORT=6379
      - DB_HOST=db
      - DB_USER=mastodon
      - DB_NAME=mastodon
      - DB_PASS=mastodon
      - DB_PORT=5432
      - ES_ENABLED=false
      - SECRET_KEY_BASE=
      - OTP_SECRET=
      - VAPID_PRIVATE_KEY=
      - VAPID_PUBLIC_KEY=
      - SMTP_SERVER=mail.example.com
      - SMTP_PORT=25
      - SMTP_LOGIN=
      - SMTP_PASSWORD=
      - SMTP_FROM_ADDRESS=notifications@example.com
      - S3_ENABLED=false
      - WEB_DOMAIN=mastodon.example.com #optional
      - ES_HOST=es #optional
      - ES_PORT=9200 #optional
      - ES_USER=elastic #optional
      - ES_PASS=elastic #optional
      - S3_BUCKET= #optional
      - AWS_ACCESS_KEY_ID= #optional
      - AWS_SECRET_ACCESS_KEY= #optional
      - S3_ALIAS_HOST= #optional
      - SIDEKIQ_ONLY=false #optional
      - SIDEKIQ_QUEUE= #optional
      - SIDEKIQ_DEFAULT=false #optional
      - SIDEKIQ_THREADS=5 #optional
      - DB_POOL=5 #optional
      - NO_CHOWN= #optional
    volumes:
      - /path/to/mastodon/appdata/config:/config
    ports:
      - 80:80
      - 443:443
    restart: unless-stopped
```

### docker cli ([click here for more info](https://docs.docker.com/engine/reference/commandline/cli/))

```bash
docker run -d \
  --name=mastodon \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e LOCAL_DOMAIN=example.com \
  -e REDIS_HOST=redis \
  -e REDIS_PORT=6379 \
  -e DB_HOST=db \
  -e DB_USER=mastodon \
  -e DB_NAME=mastodon \
  -e DB_PASS=mastodon \
  -e DB_PORT=5432 \
  -e ES_ENABLED=false \
  -e SECRET_KEY_BASE= \
  -e OTP_SECRET= \
  -e VAPID_PRIVATE_KEY= \
  -e VAPID_PUBLIC_KEY= \
  -e SMTP_SERVER=mail.example.com \
  -e SMTP_PORT=25 \
  -e SMTP_LOGIN= \
  -e SMTP_PASSWORD= \
  -e SMTP_FROM_ADDRESS=notifications@example.com \
  -e S3_ENABLED=false \
  -e WEB_DOMAIN=mastodon.example.com `#optional` \
  -e ES_HOST=es `#optional` \
  -e ES_PORT=9200 `#optional` \
  -e ES_USER=elastic `#optional` \
  -e ES_PASS=elastic `#optional` \
  -e S3_BUCKET= `#optional` \
  -e AWS_ACCESS_KEY_ID= `#optional` \
  -e AWS_SECRET_ACCESS_KEY= `#optional` \
  -e S3_ALIAS_HOST= `#optional` \
  -e SIDEKIQ_ONLY=false `#optional` \
  -e SIDEKIQ_QUEUE= `#optional` \
  -e SIDEKIQ_DEFAULT=false `#optional` \
  -e SIDEKIQ_THREADS=5 `#optional` \
  -e DB_POOL=5 `#optional` \
  -e NO_CHOWN= `#optional` \
  -p 80:80 \
  -p 443:443 \
  -v /path/to/mastodon/appdata/config:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/mastodon:glitch
```

## Parameters

Containers are configured using parameters passed at runtime (such as those above). These parameters are separated by a colon and indicate `<external>:<internal>` respectively. For example, `-p 8080:80` would expose port `80` from inside the container to be accessible from the host's IP on port `8080` outside the container.

| Parameter | Function |
| :----: | --- |
| `-p 80` | Port for web frontend |
| `-p 443` | Port for web frontend |
| `-e PUID=1000` | for UserID - see below for explanation |
| `-e PGID=1000` | for GroupID - see below for explanation |
| `-e TZ=Etc/UTC` | specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List). |
| `-e LOCAL_DOMAIN=example.com` | This is the unique identifier of your server in the network. It cannot be safely changed later. |
| `-e REDIS_HOST=redis` | Redis server hostname |
| `-e REDIS_PORT=6379` | Redis port |
| `-e DB_HOST=db` | Postgres database hostname |
| `-e DB_USER=mastodon` | Postgres username |
| `-e DB_NAME=mastodon` | Postgres db name |
| `-e DB_PASS=mastodon` | Postgres password |
| `-e DB_PORT=5432` | Portgres port |
| `-e ES_ENABLED=false` | Enable or disable Elasticsearch (requires a separate ES instance) |
| `-e SECRET_KEY_BASE=` | Browser session secret. Changing it will break all active browser sessions. |
| `-e OTP_SECRET=` | MFA secret. Changing it will break two-factor authentication. |
| `-e VAPID_PRIVATE_KEY=` | Push notification private key. Changing it will break push notifications. |
| `-e VAPID_PUBLIC_KEY=` | Push notification public key. Changing it will break push notifications. |
| `-e SMTP_SERVER=mail.example.com` | SMTP server for email notifications |
| `-e SMTP_PORT=25` | SMTP server port |
| `-e SMTP_LOGIN=` | SMTP username |
| `-e SMTP_PASSWORD=` | SMTP password |
| `-e SMTP_FROM_ADDRESS=notifications@example.com` | From address for emails send from Mastodon |
| `-e S3_ENABLED=false` | Enable or disable S3 storage of uploaded files |
| `-e WEB_DOMAIN=mastodon.example.com` | This can be set if you want your server identifier to be different to the subdomain hosting Mastodon. See [https://docs.joinmastodon.org/admin/config/#basic](https://docs.joinmastodon.org/admin/config/#basic) |
| `-e ES_HOST=es` | Elasticsearch server hostname |
| `-e ES_PORT=9200` | Elasticsearch port |
| `-e ES_USER=elastic` | Elasticsearch username |
| `-e ES_PASS=elastic` | Elasticsearch password |
| `-e S3_BUCKET=` | S3 bucket hostname |
| `-e AWS_ACCESS_KEY_ID=` | S3 bucket access key ID |
| `-e AWS_SECRET_ACCESS_KEY=` | S3 bucket secret access key |
| `-e S3_ALIAS_HOST=` | Alternate hostname for object fetching if you are front the S3 connections. |
| `-e SIDEKIQ_ONLY=false` | Only run the sidekiq service in this container instance. For large scale instances that need better queue handling. |
| `-e SIDEKIQ_QUEUE=` | The name of the sidekiq queue to run in this container. See [notes](https://docs.joinmastodon.org/admin/scaling/#sidekiq-queues). |
| `-e SIDEKIQ_DEFAULT=false` | Set to `true` on the main container if you're running additional sidekiq instances. It will run the `default` queue. |
| `-e SIDEKIQ_THREADS=5` | The number of threads for sidekiq to use. See [notes](https://docs.joinmastodon.org/admin/scaling/#sidekiq-threads). |
| `-e DB_POOL=5` | The size of the DB connection pool, must be *at least* the same as `SIDEKIQ_THREADS`. See [notes](https://docs.joinmastodon.org/admin/scaling/#sidekiq-threads). |
| `-e NO_CHOWN=` | Set to `true` to skip chown of /config on init. *READ THE APPLICATION NOTES BEFORE SETTING THIS*. |
| `-v /config` | Contains all relevant configuration files. |

## Environment variables from files (Docker secrets)

You can set any environment variable from a file by using a special prepend `FILE__`.

As an example:

```bash
-e FILE__MYVAR=/run/secrets/mysecretvariable
```

Will set the environment variable `MYVAR` based on the contents of the `/run/secrets/mysecretvariable` file.

## Umask for running applications

For all of our images we provide the ability to override the default umask settings for services started within the containers using the optional `-e UMASK=022` setting.
Keep in mind umask is not chmod it subtracts from permissions based on it's value it does not add. Please read up [here](https://en.wikipedia.org/wiki/Umask) before asking for support.

## User / Group Identifiers

When using volumes (`-v` flags), permissions issues can arise between the host OS and the container, we avoid this issue by allowing you to specify the user `PUID` and group `PGID`.

Ensure any volume directories on the host are owned by the same user you specify and any permissions issues will vanish like magic.

In this instance `PUID=1000` and `PGID=1000`, to find yours use `id your_user` as below:

```bash
id your_user
```

Example output:

```text
uid=1000(your_user) gid=1000(your_user) groups=1000(your_user)
```

## Docker Mods

[![Docker Mods](https://img.shields.io/badge/dynamic/yaml?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=mastodon&query=%24.mods%5B%27mastodon%27%5D.mod_count&url=https%3A%2F%2Fraw.githubusercontent.com%2Flinuxserver%2Fdocker-mods%2Fmaster%2Fmod-list.yml)](https://mods.linuxserver.io/?mod=mastodon "view available mods for this container.") [![Docker Universal Mods](https://img.shields.io/badge/dynamic/yaml?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=universal&query=%24.mods%5B%27universal%27%5D.mod_count&url=https%3A%2F%2Fraw.githubusercontent.com%2Flinuxserver%2Fdocker-mods%2Fmaster%2Fmod-list.yml)](https://mods.linuxserver.io/?mod=universal "view available universal mods.")

We publish various [Docker Mods](https://github.com/linuxserver/docker-mods) to enable additional functionality within the containers. The list of Mods available for this image (if any) as well as universal mods that can be applied to any one of our images can be accessed via the dynamic badges above.

## Support Info

* Shell access whilst the container is running:

    ```bash
    docker exec -it mastodon /bin/bash
    ```

* To monitor the logs of the container in realtime:

    ```bash
    docker logs -f mastodon
    ```

* Container version number:

    ```bash
    docker inspect -f '{{ index .Config.Labels "build_version" }}' mastodon
    ```

* Image version number:

    ```bash
    docker inspect -f '{{ index .Config.Labels "build_version" }}' lscr.io/linuxserver/mastodon:glitch
    ```

## Updating Info

Most of our images are static, versioned, and require an image update and container recreation to update the app inside. With some exceptions (noted in the relevant readme.md), we do not recommend or support updating apps inside the container. Please consult the [Application Setup](#application-setup) section above to see if it is recommended for the image.

Below are the instructions for updating containers:

### Via Docker Compose

* Update images:
    * All images:

        ```bash
        docker-compose pull
        ```

    * Single image:

        ```bash
        docker-compose pull mastodon
        ```

* Update containers:
    * All containers:

        ```bash
        docker-compose up -d
        ```

    * Single container:

        ```bash
        docker-compose up -d mastodon
        ```

* You can also remove the old dangling images:

    ```bash
    docker image prune
    ```

### Via Docker Run

* Update the image:

    ```bash
    docker pull lscr.io/linuxserver/mastodon:glitch
    ```

* Stop the running container:

    ```bash
    docker stop mastodon
    ```

* Delete the container:

    ```bash
    docker rm mastodon
    ```

* Recreate a new container with the same docker run parameters as instructed above (if mapped correctly to a host folder, your `/config` folder and settings will be preserved)
* You can also remove the old dangling images:

    ```bash
    docker image prune
    ```

### Image Update Notifications - Diun (Docker Image Update Notifier)

**tip**: We recommend [Diun](https://crazymax.dev/diun/) for update notifications. Other tools that automatically update containers unattended are not recommended or supported.

## Building locally

If you want to make local modifications to these images for development purposes or just to customize the logic:

```bash
git clone https://github.com/linuxserver/docker-mastodon.git
cd docker-mastodon
docker build \
  --no-cache \
  --pull \
  -t lscr.io/linuxserver/mastodon:glitch .
```

The ARM variants can be built on x86_64 hardware using `multiarch/qemu-user-static`

```bash
docker run --rm --privileged multiarch/qemu-user-static:register --reset
```

Once registered you can define the dockerfile to use with `-f Dockerfile.aarch64`.

## Versions

* **23.05.24:** - Rebase to Alpine 3.20.
* **02.05.24:** - Rebase to Alpine 3.19, enable [Active Record Encryption](https://github.com/mastodon/mastodon/pull/29831/files).
* **21.12.23:** - Rebase to Alpine 3.19.
* **30.05.23:** - Rebase to Alpine 3.18.
* **16.04.23:** - Rebase to alpine 3.17 with php8.1.
* **09.02.23:** - Add Glitch branch.
* **09.01.23:** - Updated nginx conf to fix bring inline with Mastodon configuration (fixes Elk integration).
* **19.12.22:** - Support separate sidekiq queue instances.
* **05.11.22:** - Initial Release.
