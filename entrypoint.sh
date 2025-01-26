#!/bin/sh

# Заменяем переменные окружения в конфигурационном файле
/usr/bin/envsubst < /etc/v2ray/config.json.template > /etc/v2ray/config.json

# Запускаем команду переданную через CMD (v2ray)
exec "$@"