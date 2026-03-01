#!/bin/bash

CONFIG="app.conf"

REQUIRED_KEYS=("PORT" "DB_HOST" "API_KEY")

for KEY in "${REQUIRED_KEYS[@]}"
do
  if ! sed -n "/^$KEY=/p" $CONFIG | grep -q .; then
    echo "⚠ Missing config: $KEY"
  else
    echo "$KEY exists"
  fi
done