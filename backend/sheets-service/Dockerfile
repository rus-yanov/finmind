# Сборочный этап
FROM gradle:8.7-jdk21 AS build
WORKDIR /app

# Копируем Gradle-файлы и зависимости отдельно для кеша
COPY build.gradle* settings.gradle* gradle.properties ./
COPY gradle ./gradle
RUN gradle dependencies --no-daemon || true

# Копируем исходники и собираем
COPY . .
RUN gradle bootJar --no-daemon

# Финальный минимальный образ
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

COPY --from=build /app/build/libs/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]