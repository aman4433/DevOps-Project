# Use a base image with Java and Alpine Linux
FROM eclipse-temurin:17
WORKDIR /app
COPY target/fire-*.jar frontend-service.jar

# Specify the command to run your application
CMD ["java", "-jar", "frontend-service.jar"]