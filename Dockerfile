# Используем образ v2fly/v2fly-core
FROM v2fly/v2fly-core

# Устанавливаем утилиту gettext для использования envsubst
RUN apk add --no-cache dos2unix gettext

# Копируем шаблон конфигурации
COPY config.json.template /etc/v2ray/config.json.template

# Скрипт для генерации конфигурационного файла
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN dos2unix /entrypoint.sh

# Используем команду для замены переменных окружения в конфиге
ENTRYPOINT ["/entrypoint.sh"]

# Запускаем V2Ray
CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]