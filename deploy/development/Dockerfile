# Start with a base image containing Java runtime
FROM maven:3.5.3-jdk-8-alpine as target

COPY pom.xml /pom.xml

RUN mvn dependency:go-offline

# Add Maintainer Info
LABEL maintainer="vij@exilent.systems"

# Add a volume pointing to /tmp
VOLUME /src

RUN mkdir /target
# Make port 8081 available to the world outside this container
EXPOSE 8081
COPY .mvn /.mvn
COPY mvnw /mvnw
COPY mvnw.cmd /mvnw.cmd

COPY src /src

COPY entrypoint.sh /entrypoint.sh

RUN mvn clean package -DskipTests

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

