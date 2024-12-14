# Use a JDK image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the target folder
COPY  /root/bamboo-agent-home/xml-data/build-dir/TRY-PLAN2-JOB1/target/maven-jar-sample-1.0-SNAPSHOT-jar-with-dependencies.jar /app/app.jar

# Expose the port that the app will run on
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
