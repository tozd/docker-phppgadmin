FROM tozd/php:5.5

ENV PHPPGADMIN_HOST pgsql
ENV PHPPGADMIN_PORT 5432

RUN apt-get update -q -q && \
 apt-get install phppgadmin --yes --force-yes && \
 apt-get install postgresql-client-9.3 --no-install-recommends --yes --force-yes && \
 sed -i 's/.*<h1>.*<\/h1>.*//' /usr/share/phppgadmin/intro.php

COPY ./etc /etc
