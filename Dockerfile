FROM maven:3.8.6-jdk-11-slim
WORKDIR /app
COPY . .
RUN mvn package
CMD ["java", "-jar", "target/sqlitedb-1.0-SNAPSHOT.jar"]

EXPOSE 8080