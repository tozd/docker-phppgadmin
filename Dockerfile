FROM cloyne/php

MAINTAINER Mitar <mitar.docker@tnode.com>

RUN apt-get update -q -q && \
 apt-get install phppgadmin --yes --force-yes

COPY ./etc/sites-enabled/default /etc/nginx/sites-enabled/
