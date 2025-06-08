# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file from the target directory to the container
COPY target/*.jar app.jar

# Expose the port your Spring Boot app runs on (default 8080)
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]