# University With Me docker files

The project contains configured docker containers for "University With Me" project.

You can find additional info about Docker [here](https://www.docker.com/).

## Containers
- [Keycloak:16.1.1](https://hub.docker.com/r/jboss/keycloak) has configured realm, clients and user roles.
- [Postgres:14.2-bullseye](https://hub.docker.com/_/postgres) has created data bases and users for all "University With Me" services.

## How to use
You can manage docker cantainers using [IntelijIDEA](https://www.jetbrains.com/idea/), [Doker Desktop](https://www.docker.com/products/docker-desktop/) or command line. 

Starting docker containers in command line:
1. Open command line in "uwithme-docker-files" project foulder.
2. Run command: 
```bash
docker-compose -f ".\docker-compose.yml" up -d
```

