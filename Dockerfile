FROM eclipse-temurin:17-jre-alpine

COPY target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar

CMD ["--server.port=8080"]

EXPOSE 8080

ENTRYPOINT ["java" , "-jar" , "demo-0.0.1-SNAPSHOT.jar"]