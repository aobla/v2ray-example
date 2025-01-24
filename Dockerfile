# Используем официальный образ V2Ray
FROM v2fly/v2fly-core

# Создаём директорию для конфигурации
RUN mkdir -p /v2ray

# Копируем конфигурационный файл config.json в контейнер
COPY config.json /v2ray/config.json

# Запускаем V2Ray с указанным конфигом
ENTRYPOINT ["v2ray", "-config=/v2ray/config.json"]

CMD ["ls", "/v2ray"]