FROM frolvlad/alpine-oraclejdk8:slim
ADD target/BetterCodeCentral-0.1.0.jar app.jar
ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
