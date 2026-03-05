#!/bin/bash
# Создаем папку для бэкапов, если её нет
mkdir -p ~/backups
# Копируем конфиги с меткой даты
cp -r ~/devops_start/configs ~/backups/config_backup_$(date +%Y%m%d)
echo "Бэкап готов!"
