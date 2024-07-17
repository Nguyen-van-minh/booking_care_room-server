# Build stage
FROM maven:3-openjdk-17 AS build
WORKDIR /app

COPY . .
RUN mvn clean package -DskipTests

# Run stage
FROM openjdk:17-jdk-slim
WORKDIR /app

COPY --from=build /app/target/Booking-doctor-0.0.1-SNAPSHOT.war booking-doctor.war
EXPOSE 8080

ENTRYPOINT ["java","-jar","booking-doctor.war"]
