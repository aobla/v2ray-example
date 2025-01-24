# Используем официальный образ V2Ray
FROM v2fly/v2ray-core

# Создаём директорию для конфигурации
RUN mkdir -p /etc/v2ray

# Копируем конфигурационный файл config.json в контейнер
COPY config.json /etc/v2ray/config.json

# Запускаем V2Ray с указанным конфигом
ENTRYPOINT ["v2ray", "-config=/etc/v2ray/config.json"]

CMD ["ls", "/etc/v2ray"]