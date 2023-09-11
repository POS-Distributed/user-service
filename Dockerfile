#FROM openjdk:20-ea-4-jdk
#WORKDIR /app
#VOLUME /tmp
#EXPOSE 8080
#ARG JAR_FILE=target/bam-0.0.1-SNAPSHOT.jar
#ADD ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]


#FROM openjdk:20-ea-4-jdk
#
#WORKDIR /app
#
#COPY .mvn/ .mvn
#COPY mvnw pom.xml ./
#RUN ./mvnw dependency:go-offline
#
#COPY src ./src
#
#CMD ["./mvnw", "spring-boot:run"]

#E:\apache-maven-3.9.4-bin\apache-maven-3.9.4\bin

FROM openjdk:20-ea-4-jdk
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE
COPY ${JAR_FILE} user-service.jar
COPY /bin/run.sh /bin/run.sh
#ENTRYPOINT ["java","-jar","/user-service.jar"]
ENTRYPOINT ["/bin/bash", "-c", "./bin/run.sh", "bash"]
#docker build --build-arg JAR_FILE=target/*.jar -t bam/user-service .