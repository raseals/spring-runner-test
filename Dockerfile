FROM amazoncorretto:21.0.3-alpine
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["sh", "-c", "java -XX:+PrintFlagsFinal -Duser.timezone=UTC -Djava.security.egd=file:/dev/./urandom ${JAVA_OPTS} -jar /app.jar ${0} ${@}"]
