# tozd/phppgadmin

<https://gitlab.com/tozd/docker/phppgadmin>

Available as:

* [`tozd/phppgadmin`](https://hub.docker.com/r/tozd/phppgadmin)
* [`registry.gitlab.com/tozd/docker/phppgadmin`](https://gitlab.com/tozd/docker/phppgadmin/container_registry)

## Description

Image extending [tozd/php](https://gitlab.com/tozd/docker/php) image with [phpPgAdmin](https://github.com/phppgadmin/phppgadmin).
It is intended to be used for a installation-wide web admin where each user sees databases they have access to.

To configure to which database to connect, use environment variables:

* `PHPPGADMIN_HOST` – hostname of the database, default `pgsql`
* `PHPPGADMIN_PORT` – port of the database, default `5432`
