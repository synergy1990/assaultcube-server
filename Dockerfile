FROM debian:latest

LABEL org.opencontainers.image.authors="synergy2k@synergy2k.de"
LABEL org.opencontainers.image.source="https://github.com/synergy1990/assaultcube-server"

RUN apt-get update && \
    apt-get install wget bzip2

ENV PLAYERCOUNT="8"
ENV SERVER_DESCRIPTION="synergy2k_AssaultCubeServer"
ENV SERVER_MODT="Greetings from synergy2k"
ENV MASTER_PASSWORD="synergy2k"
ENV GAME_PARAMS="-c${PLAYERCOUNT} -n${SERVER_DESCRIPTION} -o${SERVER_MODT} -x${MASTER_PASSWORD}"
ENV UMASK=000
ENV UID=99
ENV GID=100
ENV USER="assaultcuber"
ENV DATA_PERM=770

RUN mkdir /opt/acserver && \
	useradd -d /opt/acserver -s /bin/bash $USER && \
	chown -R $USER /opt/acserver && \
	ulimit -n 2048

ADD /scripts/ /opt/scripts/
RUN chmod -R 770 /opt/scripts/

#Server Start
ENTRYPOINT ["/opt/scripts/start.sh"]
