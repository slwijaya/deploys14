# Gunakan Java 17 slim sebagai base image
FROM openjdk:17-jdk-slim

# Buat direktori kerja di dalam container
WORKDIR /app

# Salin file JAR dari Gradle build
ARG JAR_FILE=build/libs/productApi-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# Jalankan aplikasi Spring Boot
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
