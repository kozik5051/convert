# Используем официальный Nginx образ
FROM nginx:alpine

# Удаляем дефолтную конфигурацию
RUN rm /etc/nginx/conf.d/default.conf

# Копируем свою конфигурацию
COPY nginx.conf /etc/nginx/conf.d

# Копируем HTML-файлы в директорию для обслуживания
COPY web/ /usr/share/nginx/html

# Открываем порт
EXPOSE 80
