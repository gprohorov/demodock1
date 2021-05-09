# the first stage of our build will use a maven 3.6.3 parent image
FROM maven:3.6.3-jdk-11 AS MAVEN_BUILD

# copy the pom and src code to the container
COPY ./ ./

# package our application code
RUN mvn clean package

# the second stage of our build will use open jdk 11 on as above
FROM openjdk:11.0.7-jdk-slim

# copy only the artifacts we need from the first stage and discard the rest
COPY --from=MAVEN_BUILD /target/demo-0.0.1-SNAPSHOT.jar /demo.jar

# set the startup command to execute the jar
CMD ["java", "-jar", "/demo.jar"]

#  sudo docker build -t docker-package-multistage-build-demo:1.0-SNAPSHOT .