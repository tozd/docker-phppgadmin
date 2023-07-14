# tozd/phppgadmin

<https://gitlab.com/tozd/docker/phppgadmin>

Available as:

- [`tozd/phppgadmin`](https://hub.docker.com/r/tozd/phppgadmin)
- [`registry.gitlab.com/tozd/docker/phppgadmin`](https://gitlab.com/tozd/docker/phppgadmin/container_registry)

## Image inheritance

[`tozd/base`](https://gitlab.com/tozd/docker/base) ← [`tozd/dinit`](https://gitlab.com/tozd/docker/dinit) ← [`tozd/nginx`](https://gitlab.com/tozd/docker/nginx) ← [`tozd/nginx-mailer`](https://gitlab.com/tozd/docker/nginx-mailer) ← [`tozd/nginx-cron`](https://gitlab.com/tozd/docker/nginx-cron) ← [`tozd/php`](https://gitlab.com/tozd/docker/php) ← `tozd/phppgadmin`

## Tags

- `latest`: phpPgAdmin v7.13.0

## Variables

- `PHPPGADMIN_HOST`: Hostname of the database to connect to., Default is `pgsql`.
- `PHPPGADMIN_PORT`: Port of the database to connect to. Default is 5432.

## Description

Image provides [phpPgAdmin](https://github.com/phppgadmin/phppgadmin).
When the container runs phpPgAdmin is available at `/phppgadmin/` URL.

By default it is intended to be used for a installation-wide web admin where each user sees databases they have access to, but you can configure it differently, too (you can mount a file or extend the image to modify the `/etc/phppgadmin/config.inc.php` file).

To configure to which database to connect use environment variables.

## GitHub mirror

There is also a [read-only GitHub mirror available](https://github.com/tozd/docker-phppgadmin),
if you need to fork the project there.
