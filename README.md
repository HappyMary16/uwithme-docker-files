# University With Me docker files

[![License](https://img.shields.io/:license-GPL-blue.svg)](https://github.com/HappyMary16/uwithme-docker-files/blob/master/LICENSE)

## Description

This repository contains Docker Compose file and appropriate configs to develop and deploy University With Me project.

## Requirements

To deploy the application you will need:

- [Docker](https://www.docker.com/)

## Development Mode

If you are developing the application locally and only need the Database and Authentication services (PostgreSQL and Keycloak), you can deploy the development configuration:

```shell
docker compose -f docker-compose.dev.yml up -d
```

## Deploying full stack locally

You can deploy the full application stack locally by:

1. Pointing uwm.int, tests.uwm.int, bot.uwm.int, auth.uwm.int, service1.uwm.int, and service2.uwm.int to 127.0.0.1
2. Deploying with

```shell
docker compose up -d
```

## Deploying in production

1. Replace keys and adjust configuration in .env file (don't forget to change Keycloak client secrets)
2. Deploy with

```shell
docker compose up -d
```

## Copyright

Released under the GNU General Public License v2.0.
See the [LICENSE](https://github.com/HappyMary16/uwithme-docker-files/blob/master/LICENSE) file.
