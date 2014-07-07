#/bin/bash -e

mkdir -p /srv/var/log/phppgadmin

# TODO: We should not trust whole Docker IP range

docker run -d --name phppgadmin -h phppgadmin.phppgadmin.server2.docker -e SET_REAL_IP_FROM=172.17.0.0/16 -e ADMINADDR=root@cloyne.net -e REMOTES=mail.cloyne.net -v /srv/var/log/phppgadmin:/var/log/nginx cloyne/phppgadmin
