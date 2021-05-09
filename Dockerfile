FROM openjdk:11.0.7-jdk-slim

COPY target/demo-0.0.1-SNAPSHOT.jar /demo.jar

CMD ["java", "-jar", "/demo.jar"]

# docker build -t docker-package-only-build-demo:1.0-SNAPSHOT .
#                                                             ^  - this point !!!!!!
#                                                             I    IMPORTANT!!!!!!!
# docker run -d -p 8080:8080 docker-package-only-build-demo:1.0-SNAPSHOT