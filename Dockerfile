## this is conventional process
# jdk21 has change because the old version not supported
FROM eclipse-temurin:21-jdk-jammy   
VOLUME /tmp
VOLUME /X/attachments
COPY target/dev-4.0.1-app.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]


## spring boot supports optimized/layed docker image generation support
# use :mvn package spring-boot:build-image
