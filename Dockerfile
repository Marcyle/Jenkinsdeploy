FROM 10.41.0.xx/library/java:8-jre-alpine
ENV TZ=Asia/Shanghai
VOLUME /tmp
ADD build/libs/*.jar /app/app.jar
ADD /path/to/application-sit.yml /app/application.yml
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Xms2048m", "-Xmx2048m", "-Xss512k","-jar","/app/app.jar","--spring.profiles.active=${SPRING_PROFILES_ACTIVE}","--spring.config.location=/app/application.yml"]
