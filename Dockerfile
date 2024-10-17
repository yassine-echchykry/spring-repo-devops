# Start with a base image containing Java runtime
FROM openjdk:17-jdk-slim

LABEL authors="Abdelaziz"

EXPOSE 8081

# The application's jar file
ARG JAR_FILE=target/spring-boot-jpa-h2-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
COPY ${JAR_FILE} app.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]