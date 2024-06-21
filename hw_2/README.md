# ДЗ_2. Docker Compose 

## docker-compose.yaml

Этот docker-compose.yml:

- Использует собственный Dockerfile для сервиса jupyterlab, init_db для иницализации БД, саму БД
- Включает depends_on для сервиса db, который ждет иницализации базы данных
- Включает volumes для постоянного хранения данных PostgreSQL и данных JupyterLab
- Использует проброс порта для JupyterLab
- Добавляет healthcheck для всех сервисов
- Использует одну общую сеть для всех сервисов

## Вопросы

### Ресурсы
- Можно ли ограничивать ресурсы (например, память или CPU) для сервисов в docker-compose.yml? Если нет, то почему, если да, то как?

В docker-compose.yml можно ограничивать ресурсы, такие как память и CPU, для каждого сервиса. Это делается при помощи параметров mem_limit и cpu.

```
services:
  jupyterlab:
    build:
      context: .
      dockerfile: Dockerfile
    container_name: jupyterlab_container
    volumes:
      - .:/workspace
      - /app/data
    ports:
      - "${JUPYTER_PORT}:8888"
    mem_limit: 512m
    cpus: "0.5"
```
### Запуск сервиса
- Как можно запустить только определенный сервис из docker-compose.yml, не запуская остальные?

Для запуска только одного определенного сервиса из файла docker-compose.yml, можно использовать команду docker-compose up, указав имя сервиса после ключевого слова up.

```
docker-compose up -d [service-name]
```
