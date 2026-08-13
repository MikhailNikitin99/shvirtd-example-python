#!/bin/bash
mkdir -p /opt/backup
DATE=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="/opt/backup/mysqldump_${DATE}.sql"
docker run -d --rm --network shvirtd-example-python_backend --env-file /opt/shvirtd-example-python/.env schnitzler/mysqldump > "$BACKUP_FILE"
