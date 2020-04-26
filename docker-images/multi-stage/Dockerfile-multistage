FROM maven:3.6-alpine as builder


COPY app-maven /app

WORKDIR /app
RUN mvn package

FROM openjdk:8-alpine

COPY --from=builder  /app/target/my-app-1.0-SNAPSHOT.jar /app.jar

CMD java -jar /app.jar
