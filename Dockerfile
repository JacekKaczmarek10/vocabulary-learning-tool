FROM maven:3.9.6-amazoncorretto-21 AS build

WORKDIR /build
COPY . .
RUN mvn clean install -Ptest

FROM openjdk:21
COPY --from=build /build/target/quizapp-0.0.1-SNAPSHOT.jar /usr/local/lib/quizapp-0.0.1-SNAPSHOT.jar
EXPOSE 8011
CMD ["java", "-jar", "/usr/local/lib/quizapp-0.0.1-SNAPSHOT.jar"]