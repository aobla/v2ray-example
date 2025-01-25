# Используем официальный образ V2Ray
FROM v2fly/v2fly-core

# Копируем шаблон конфигурации
COPY config.json.template /etc/v2ray/config.json.template

# Подставляем переменные окружения в конфигурацию и запускаем V2Ray
CMD sh -c "envsubst < /etc/v2ray/config.json.template > /etc/v2ray/config.json && v2ray run -config /etc/v2ray/config.json"