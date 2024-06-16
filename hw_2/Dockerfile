# Используем официальный образ Python в качестве базового
FROM python:3.10-slim

# Устанавливаем основные системные зависимости
RUN apt-get update && apt-get install -y \
    python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Создаем рабочую директорию
WORKDIR /workspace

# Копируем файл requirements.txt в рабочую директорию
COPY requirements.txt /workspace/

# Устанавливаем JupyterLab и другие необходимые пакеты
RUN pip install --no-cache-dir -r requirements.txt

# Копируем все файлы из текущей директории в контейнер
COPY . /workspace

# Создание непривилегированного пользователя
RUN useradd -ms /bin/bash jupyter
USER jupyter

# Монтирование volume для хранения данных
VOLUME /app/data

# Открываем порты для доступа к JupyterLab
EXPOSE 8888

# Команда для запуска JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser"]