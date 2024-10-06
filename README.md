# assaultcube-server
These files create an AssaultCube server as a docker container

This is a docker container for the most recent AssaultCube version 1.3.0.2.
If <b>server.sh</b> is not present in /opt/acserver, the official AssaultCube Linux binaries will be downloaded into <b>/opt/acserver</b> and then extracted just there. The previously downloaded archive will be removed.

# All relevant files will go into /opt/acserver (of the container of course)

# Four launch parameters for the server I find helpful:
| Environment variable | default value |
| --- | --- |
| PLAYERCOUNT | 8 |
| SERVER_DESCRIPTION | synergy2k_AssaultCube_server |
| SERVER_MODT | Greetings from synergy2k |
| MASTER_PASSWORD | synergy2k |

- The server will launch with: -c${PLAYERCOUNT} -n${SERVER_DESCRIPTION} -o${SERVER_MODT} -x${MASTER_PASSWORD}

# I do not recommend to change these:
| variable | value |
| --- | --- |
| MASK | 000 |
| UID | 99 |
| GID | 100 |
| USER | assaultcuber |
| DATA_PERM | 770 |

# Thanks to ich777 ( https://github.com/ich777 ) and mattieserver ( https://github.com/mattieserver/ ) for the base of my bash scripts.
