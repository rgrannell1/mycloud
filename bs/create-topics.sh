#! /usr/bin/env zsh

source .app-env
ENDPOINT="https://mycloud.rgrannell.xyz"

curl -qs --user "$CS_USER:$CS_PASSWORD" -X POST "$ENDPOINT/topic/borg" \
  -H 'Content-Type: application/json' \
  -d '{ "description": "Bookmarks from Borg Browser Plugin" }'
