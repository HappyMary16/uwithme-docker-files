# University With Me docker files

The project contains configured docker containers for development of "University With Me" project.

For production use these docker containers: [uwithme-deployment](https://github.com/Misha999777/uwithme-deployment).

You can find additional info about Docker [here](https://www.docker.com/).

## Containers
- [Keycloak:20.0.5](https://quay.io/repository/keycloak/keycloak) has configured realm, clients and user roles.
- [Postgres:15.2](https://hub.docker.com/_/postgres) has created databases and users for all "University With Me" services.

## How to use
You can manage docker containers using [IntelliJIDEA](https://www.jetbrains.com/idea/), [Docker Desktop](https://www.docker.com/products/docker-desktop/) or command line. 

Starting docker containers in command line:
1. Open command line in "uwithme-docker-files" project folder.
2. Run command: 
```bash
docker-compose up -d
```

