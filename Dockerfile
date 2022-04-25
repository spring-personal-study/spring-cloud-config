FROM openjdk:17-ea-11-jdk-slim
VOLUME /tmp
COPY apiEncryptionKey.jks apiEncryptionKey.jks
COPY build/libs/msa-config-service-1.0.jar ConfigServer.jar
ENTRYPOINT ["java", "-jar", "ConfigServer.jar"]