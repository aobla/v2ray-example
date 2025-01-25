# Используем официальный образ V2Ray
FROM v2fly/v2fly-core

# Копируем конфигурационный файл config.json в контейнер
COPY config.json /etc/v2ray/config.json

# Запускаем V2Ray с указанным конфигом
ENTRYPOINT ["v2ray", "run"]