FROM openjdk:8-jdk-alpine
MAINTAINER experto.com
VOLUME /tmp
EXPOSE 8080
ARG JARFILE=build/libs/springbootpostgresqldocker-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} springbootpostgresqldocker.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/springbootpostgresqldocker.jar"]