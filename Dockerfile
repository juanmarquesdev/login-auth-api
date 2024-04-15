FROM openjdk:latest
WORKDIR /app
COPY . .
RUN ./mvnw package -DskipTests
CMD ["java", "-jar", "target/login-auth-api-0.0.1-SNAPSHOT.jar"]
