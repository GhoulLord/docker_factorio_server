FROM dtandersen/factorio:latest

MAINTAINER https://github.com/GhoulLord/docker_factorio_server

ENV USER=factorio \
    GROUP=factorio \
    PUID=1004 \
    PGID=1002

USER root

RUN deluser factorio && \
    addgroup -g $PGID -S $GROUP && \
    adduser -u $PUID -G $GROUP -s /bin/sh -SDH $USER && \
    chown -R $USER:$GROUP /opt/factorio /factorio
    
USER $USER
