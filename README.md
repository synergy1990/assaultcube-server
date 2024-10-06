# assaultcube-server
These files create an AssaultCube server as a docker container

This is a docker for the most recent AssaultCube container.
It downloads the linux binaries (a .tar.bz2 archive) from the official AssaultCube github repository,
extracts it (default: /opt/acserver)
and runs the server with a couple of options like max players, server description, server message and master password.

# All relevant files will go into /opt/acserver (of the container of course)

# Four launch parameters for the server I find helpful:
- PLAYERCOUNT        = "8"
- SERVER_DESCRIPTION = "synergy2k' AssaultCube server"
- SERVER_MODT        = "Greetings from synergy2k"
- MASTER_PASSWORD    = "synergy2k"
- GAME_PARAMS        = "-c${PLAYERCOUNT} -n${SERVER_DESCRIPTION} -o${SERVER_MODT} -x${MASTER_PASSWORD}"

# I do not recommend to change these:
- UMASK=000
- UID=99
- GID=100
- USER="assaultcuber"
- DATA_PERM=770

Thanks to ich777 ( https://github.com/ich777 ) and mattieserver ( https://github.com/mattieserver/ ) for the base of my bash scripts.
