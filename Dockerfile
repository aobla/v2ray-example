# Используем официальный образ V2Ray
FROM v2fly/v2fly-core

# Копируем шаблон конфигурационного файла
COPY config.json /etc/v2ray/config.json

CMD ["v2ray", "-h"]
# Запуск V2Ray с использованием конфигурации
CMD ["v2ray", "-config=/etc/v2ray/config.json"]