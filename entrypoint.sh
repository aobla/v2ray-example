#!/bin/sh

envsubst < /etc/v2ray/config.json.template > /etc/v2ray/config.json

exec "$@"