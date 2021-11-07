#!/bin/bash

MCRCON_PATH="/usr/local/bin"
BACKUP_PATH="/home/username/mc_backup"
MC_PATH="/home/username/minecraft"

IP="127.0.0.1"
PORT="25575"
PASS="[password]"

function rcon {
    $MCRCON_PATH/mcrcon -H $IP -P $PORT -p $PASS "$1"
}

rcon "save-off"
rcon "save-all"
tar -cvpzf $BACKUP_PATH/server-$(date +%F_%R).tar.gz $MC_PATH
rcon "save-on"
## Delete older backups
find $BACKUP_PATH -type f -mtime +7 -name '*.gz' -delete
