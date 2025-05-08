FROM openjdk:17-alpine

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8080

# ENTRYPOINT 변경 → 환경변수로 DB 정보 전달 가능하게 함
ENTRYPOINT ["sh", "-c", "java -jar app.jar"]
