#! /usr/bin/env zsh

rsync root@mycloud.rgrannell.xyz:/cs.db cs-db.sqlite
sqlitebrowser cs-db.sqlite
