FROM frolvlad/alpine-oraclejdk8:slim
ENV PORT 8100
ADD target/BetterCodeCentral-0.1.0.jar /app.jar
RUN chmod a+r /app.jar
RUN adduser -D myuser
USER myuser
CMD java -Djava.security.egd=file:/dev/./urandom -jar /app.jar --server.port=$PORT --server.address=0.0.0.0
