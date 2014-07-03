FROM cloyne/php

MAINTAINER Mitar <mitar.docker@tnode.com>

RUN apt-get update -q -q && \
 apt-get install phppgadmin --yes --force-yes && \
 apt-get install postgresql-client-9.1 --no-install-recommends --yes --force-yes && \
 sed -i 's/.*<h1>.*<\/h1>.*//' /usr/share/phppgadmin/intro.php

COPY ./etc/sites-enabled/default /etc/nginx/sites-enabled/
COPY ./etc/config.inc.php /etc/phppgadmin/config.inc.php
