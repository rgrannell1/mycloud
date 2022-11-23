#! /usr/bin/env zsh

rsync root@mycloud.rgrannell.xyz:/app/common-storage/db.sqlite cs-db.sqlite
sqlitebrowser cs-db.sqlite
