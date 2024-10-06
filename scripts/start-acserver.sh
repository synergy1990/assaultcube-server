#!/bin/bash
if [ ! -f /opt/acserver/server.sh ]; then
    echo "AssaultCube server files not found! Downloading!"
    wget -q -O /opt/acserver/acserver_linux.tar.bz2 https://github.com/assaultcube/AC/releases/download/v1.3.0.2/AssaultCube_v1.3.0.2_LockdownEdition_RC1.tar.bz2
    cd /opt/acserver
    tar --directory /opt/acserver -xvjf /opt/acserver/acserver_linux.tar.bz2
    rm /opt/acserver/acserver_linux.tar.bz2
fi
echo "AssaultCube server files should now be in /opt/acserver"

echo "---Starting Server---"
cd /opt/acserver
chmod +x /opt/acserver/server.sh
/opt/acserver/server.sh ${GAME_PARAMS}
