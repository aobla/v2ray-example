# Используем официальный образ V2Ray
FROM v2fly/v2fly-core

# Создаем конфигурационный файл из переменной окружения
RUN echo '{
  "inbounds": [
    {
      "port": '$PORT',
      "protocol": "vmess",
      "settings": {
        "clients": [
          {
            "id": "'$UUID'",
            "alterId": 0
          }
        ]
      },
      "streamSettings": {
        "network": "ws",
        "wsSettings": {
          "path": "/vmess"
        }
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom",
      "settings": {}
    }
  ]
}' > /etc/v2ray/config.json

# Запускаем V2Ray с указанным конфигом
ENTRYPOINT ["v2ray", "run"]