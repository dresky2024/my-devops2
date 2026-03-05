# Используем легкий образ Linux
FROM alpine:latest

# Устанавливаем bash, так как в alpine его нет по умолчанию
RUN apk add --no-cache bash

# Копируем наш скрипт внутрь контейнера
COPY scripts/backup.sh /app/backup.sh

# Даем права на запуск
RUN chmod +x /app/backup.sh

# Выполняем скрипт при запуске контейнера
CMD ["/bin/bash", "/app/backup.sh"]
