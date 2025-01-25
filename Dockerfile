# Используем официальный образ V2Ray
FROM v2fly/v2fly-core

# Скрипт для генерации конфигурационного файла
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Запуск V2Ray через скрипт
ENTRYPOINT ["/entrypoint.sh"]