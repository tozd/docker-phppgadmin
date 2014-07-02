#/bin/bash -e

docker run -d --name phppgadmin -v /srv/var/log/phppgadmin:/var/log/nginx cloyne/phppgadmin
