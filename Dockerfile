# Используем официальный образ для Java
FROM openjdk:23-jdk-slim

# Указываем рабочую директорию в контейнере
WORKDIR /app

# Копируем скомпилированный JAR файл в контейнер
COPY target/alis-0.0.1-SNAPSHOT.jar app.jar

# Открываем порт для приложения
EXPOSE 8080

# Указываем команду для запуска приложения
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
