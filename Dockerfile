# Используем официальный образ V2Ray
FROM v2fly/v2ray-core

# Копируем конфигурационный файл config.json в контейнер
COPY config.json /etc/v2ray-railway/config.json

# Запускаем V2Ray с указанным конфигом
ENTRYPOINT ["v2ray-railway", "-config=/etc/v2ray-railway/config.json"]