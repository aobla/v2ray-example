# Используем базовый образ Alpine с установленным gettext
FROM alpine:latest

# Устанавливаем gettext для использования envsubst
RUN apk --no-cache add gettext

# Копируем шаблон конфигурации
COPY config.json.template /etc/v2ray/config.json.template

# Устанавливаем V2Ray
RUN apk add --no-cache v2ray

# Скрипт для генерации конфигурационного файла
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Используем команду для замены переменных окружения в конфиге
ENTRYPOINT ["/entrypoint.sh"]

# Запускаем V2Ray
CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]