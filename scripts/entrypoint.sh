#!/bin/bash

envsubst < /home/${USER_NAME}/server.cfg.tpl > ${PATH_SERVER}/cfg/server.cfg

steamcmd +force_install_dir ${PATH_SERVER} +login anonymous +app_update 222860 validate +quit

${PATH_SERVER}/srcds_run \
    -console \
    -game left4dead2 \
    -port 27015 $@