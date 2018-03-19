FROM dtandersen/factorio:latest

MAINTAINER https://github.com/GhoulLord/docker_factorio_server

ENV USER=factorio \
    GROUP=factorio \
    OUID=845 \
    OGID=845 \
    PUID=1004 \
    PGID=1002

RUN groupmod -g PGID factorio && \
    usermod -u PUID factorio && \
    find / -gid OGID ! -type l -exec chgrp -h PGID {} \; && \
    find / -uid OUID -exec chown PUID {} \;
