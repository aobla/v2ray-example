# Используем образ v2fly/v2fly-core
FROM v2fly/v2fly-core

# Устанавливаем утилиту gettext для использования envsubst
# RUN apk update && apk add --no-cache gettext bash

# Копируем шаблон конфигурации
# COPY config.json.template /etc/v2ray/config.json.template
COPY config.json /etc/v2ray/config.json

# Скрипт для генерации конфигурационного файла
# COPY entrypoint.sh /entrypoint.sh
# RUN chmod +x /entrypoint.sh

# Проверим, где находится v2ray, и укажем полный путь
RUN which v2ray

# Указываем entrypoint для генерации конфигурации и запуска
# ENTRYPOINT ["/entrypoint.sh"]
ENTRYPOINT ["v2ray", "run", "-config", "/etc/v2ray/config.json"]

# Указываем команду для запуска V2Ray
# CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]