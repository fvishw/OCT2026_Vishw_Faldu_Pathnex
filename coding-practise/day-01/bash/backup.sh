#!/bin/bash

set -euo pipefail 

# -e -> exit if command fails , -u -> fails on undefined vars, -o -> detect failure inside pipeline

SOURCE="/var/log"
BACKUP_DIR="/backup"
DEST="/backup/pathnex-$(date+%F).tar.gz"


mkdir -p "$BACKUP_DIR"


tar -czf "$DEST" "$SOURCE"

# -c -> create , z-> for gzip compression, f->for provide file path or dir
# tar -xvzf archive.tar.gz => -v ->verbose , x->extract , z->gzip compression , f-> file input(.tar.gz)


echo "Backup created at:$DEST"


# 0 2 * * * /usr/local/bin/backup.sh >> /var/log/backup.log 2>&1

# minute     0
# hour       2
# day        *
# month      *
# weekday    *

# = every day at 02:00