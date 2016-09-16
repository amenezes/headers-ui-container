#!/bin/bash
DCP_PRESENCE=$(find /usr/local/bin -name docker-compose | wc -l)
if [ $DCP_PRESENCE -eq 1 ]
  then
    /usr/local/bin/docker-compose exec mysql bash mysql/scripts/conf-db.sh
  else
    echo "[*] some problem happened with script: <db-run.sh> :/"
fi
