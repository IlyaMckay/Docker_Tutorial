# Используем базовый образ Python
FROM python:3.9-slim

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем зависимости из файла зависимостей (requirements.txt)
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем все остальные файлы в текущую рабочую директорию
COPY . .

# Определяем команду, которая будет запускаться при запуске контейнера
CMD ["python", "app.py"]
