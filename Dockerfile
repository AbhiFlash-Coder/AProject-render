FROM maven:3.8.4-openjdk-11-slim AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests


FROM openjdk:11-jre-slim
WORKDIR /app
COPY target/Abhishyandh-Global-Solutions-WebApplication-2-*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
