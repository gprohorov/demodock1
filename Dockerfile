#select parent image
FROM maven:3.6.3-jdk-11

# copy the sourse tree and pom.xml to our new container
COPY ./ ./

# package application code
RUN mvn clean package

# EXECUTE
CMD ["java", "jar", "target/demo-0.0.1-SNAPSHOT.jar"]


# docker build -t docker-package-normal-build-demo:1.0-SNAPSHOT .
#                                                             ^  - this point !!!!!!
#                                                             I    IMPORTANT!!!!!!!
# docker run -d -p 8080:8080 docker-package-normal-build-demo:1.0-SNAPSHOT