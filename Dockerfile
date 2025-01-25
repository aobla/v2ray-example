# Используем официальный образ V2Ray
FROM v2fly/v2fly-core

# Копируем шаблон конфигурации
COPY config.json.template /etc/v2ray/config.json.template

# Скрипт для генерации конфигурационного файла
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]