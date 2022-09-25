# syntax=docker/dockerfile:1
FROM openjdk:18.0-slim
CMD ["mkdir", "/usr/src/myapp"]
COPY hello-world-java/target/hello-world-java-1.0-SNAPSHOT.jar /usr/src/myapp/
CMD ["java", "-jar", "usr/src/myapp/hello-world-java-1.0-SNAPSHOT.jar"]