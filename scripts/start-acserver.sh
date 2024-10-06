#!/bin/bash
if [ ! -f ${DATA_DIR}/server.sh ]; then
    echo "AssaultCube server files not found!"
    wget -q -O ${DATA_DIR}/acserver_linux.tar.bz2 https://github.com/assaultcube/AC/releases/download/v1.3.0.2/AssaultCube_v1.3.0.2_LockdownEdition_RC1.tar.bz2
    tar --directory ${DATA_DIR} -xvjf /opt/acserver/acserver_linux.tar.bz2
    rm ${DATA_DIR}/acserver_linux.tar.bz2
fi
echo "AssaultCube server files should now be in ${DATA_DIR}"

echo "---Starting Server---"
cd ${DATA_DIR}
chmod +x ${DATA_DIR}/server.sh
${DATA_DIR}/server.sh ${GAME_PARAMS}
