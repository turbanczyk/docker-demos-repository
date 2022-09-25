# syntax=docker/dockerfile:1
FROM maven:3.8.6-openjdk-18-slim
WORKDIR /usr/src/my-app
COPY api /usr/src/my-app/
RUN mvn package
CMD ["cp", "-avr", "target", "volume-1/api"]