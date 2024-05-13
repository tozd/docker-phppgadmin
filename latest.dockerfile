FROM registry.gitlab.com/tozd/docker/php:8.3

ENV PHPPGADMIN_HOST=pgsql
ENV PHPPGADMIN_PORT=5432

RUN apt-get update -q -q && \
  apt-get install phppgadmin --yes --force-yes && \
  apt-get install postgresql-client-14 --no-install-recommends --yes --force-yes && \
  grep -l -Z -P -r '<.*\$appVersion.*>' /usr/share/phppgadmin/ | xargs -0 sed -i 's/<.*\$appVersion.*>//' && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.cache ~/.npm

COPY ./etc /etc
