# Use an official Java runtime as a parent image
FROM openjdk:11-jre-slim

# Copy the JAR file into the container's /app directory
COPY target/Abhishyandh-Global-Solutions-WebApplication-2-0.0.1-SNAPSHOT.jar /app/Abhishyandh-Global-Solutions-WebApplication-2.jar

# Set the working directory
WORKDIR /app

# Expose port 2211
EXPOSE 2211

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/Abhishyandh-Global-Solutions-WebApplication-2.jar"]
