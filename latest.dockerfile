FROM registry.gitlab.com/tozd/docker/php:8.2

ENV PHPPGADMIN_HOST pgsql
ENV PHPPGADMIN_PORT 5432

RUN apt-get update -q -q && \
  apt-get install phppgadmin --yes --force-yes && \
  apt-get install postgresql-client-14 --no-install-recommends --yes --force-yes && \
  sed -i 's/.*<h1>.*<\/h1>.*//' /usr/share/phppgadmin/intro.php && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.cache ~/.npm

COPY ./etc /etc
