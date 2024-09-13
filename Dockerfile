FROM openjdk:11-jre-slim
WORKDIR /app
COPY target/Abhishyandh-Global-Solutions-WebApplication-2-*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
