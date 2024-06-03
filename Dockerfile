# Use an OpenJDK base image
FROM openjdk:11

# Set the working directory in the container
WORKDIR /pallavi

# Copy the packaged JAR file into the container at the specified path
COPY target/love-0.0.1-SNAPSHOT.jar /pallavi/love.jar

# Expose the port the Spring Boot application runs on
EXPOSE 8080

# Run the Spring Boot application when the container launches
CMD ["java", "-jar", "love.jar"]

