#!/bin/sh

# Заменяем переменные окружения в конфигурационном файле
envsubst < /etc/v2ray/config.json.template > /etc/v2ray/config.json

# Запускаем команду переданную через CMD (v2ray)
exec v2ray run -config /etc/v2ray/config.json