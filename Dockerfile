# Use a Java base image
FROM adoptopenjdk/openjdk11:alpine-slim

# Set working directory
WORKDIR /app

# Copy JAR file into the container
COPY target/your-backend.jar app.jar

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
