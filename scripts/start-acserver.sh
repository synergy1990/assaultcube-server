#!/bin/bash
if [ ! -f /opt/acserver/server.sh ]; then
    echo "AssaultCube server files not found!"
    if [ ! -f /opt/acserver/acserver_linux.tar.bz2 ]; then
        echo "Downloading..."
        wget -q -O /opt/acserver/acserver_linux.tar.bz2 https://github.com/assaultcube/AC/releases/download/v1.3.0.2/AssaultCube_v1.3.0.2_LockdownEdition_RC1.tar.bz2
    fi
    cd /opt/acserver
    tar --directory /opt/acserver -xvjf  /opt/acserver/acserver_linux.tar.bz2
    rm /opt/acserver/acserver_linux.tar.bz2
fi
echo "AssaultCube server files should now be in /opt/acserver"

GAME_PARAMS="-c${PLAYERCOUNT} -n${SERVER_DESCRIPTION} -o${SERVER_MODT} -x${MASTER_PASSWORD}"

echo "---Starting Server---"
cd /opt/acserver
chmod +x /opt/acserver/server.sh
echo "Launch parameters are: ${GAME_PARAMS}"
/opt/acserver/server.sh $GAME_PARAMS
