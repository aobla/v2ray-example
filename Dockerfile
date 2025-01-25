# Используем официальный образ V2Ray
FROM v2fly/v2fly-core

# Устанавливаем утилиту envsubst для обработки переменных окружения
RUN apt-get update && apt-get install -y gettext && apt-get clean

# Копируем шаблон конфигурации
COPY config.json.template /etc/v2ray/config.json.template

# Скрипт для генерации конфигурационного файла
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Используем команду для замены переменных окружения в конфиге
ENTRYPOINT ["/entrypoint.sh"]

# Запускаем V2Ray
CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]