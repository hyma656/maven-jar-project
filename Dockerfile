# Use a JDK image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the target folder
COPY **/*.jar /app/my-app.jar

# Expose the port that the app will run on
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/my-app.jar"]
