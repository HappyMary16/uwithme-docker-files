# University With Me docker files

[![License](https://img.shields.io/:license-GPL-blue.svg)](https://github.com/HappyMary16/uwithme-docker-files/blob/master/LICENSE)

## Description

This repository contains Docker Compose file and appropriate configs to develop and deploy University With Me project.

## Requirements

To deploy the application you will need:

- [Docker](https://www.docker.com/)

## Development Mode

If you are developing the application locally and only need the Database and Authentication services (PostgreSQL, Keycloak, and Caddy with oauth2-proxy in front of both UIs), you can deploy the development configuration:

```shell
docker compose -f docker-compose.dev.yml up -d
```

Then start the UIs and services you work on locally and open them through Caddy:

| URL                                            | Serves                                                         |
|:-----------------------------------------------|:---------------------------------------------------------------|
| [http://localhost:8080](http://localhost:8080) | Keycloak                                                       |
| [http://localhost:4181](http://localhost:4181) | University With Me UI (port 3000) with its service at `/api` (port 8081) |
| [http://localhost:4180](http://localhost:4180) | Tests UI (port 5173) with its service at `/api` (port 8090)    |

PostgreSQL is available at `localhost:5432`.

## Deploying full stack locally

You can deploy the full application stack locally by:

1. Pointing uwm.int, tests.uwm.int and auth.uwm.int to 127.0.0.1
2. Deploying with

```shell
docker compose up -d
```

## Deploying in production

1. Replace keys and adjust configuration in .env file (don't forget to change Keycloak secrets in `keycloak-config/realm-export.json`)
2. Set `SSL_ENABLED="true"` to serve over HTTPS. Leave it empty for HTTP.
3. Deploy with

```shell
docker compose up -d
```

## Copyright

Released under the GNU General Public License v2.0.
See the [LICENSE](https://github.com/HappyMary16/uwithme-docker-files/blob/master/LICENSE) file.
