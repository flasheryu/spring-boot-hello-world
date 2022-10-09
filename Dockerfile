FROM openjdk:8-jdk-alpine
VOLUME /tmp

ARG JAR_FILE
ADD target/spring-boot-hello-world-1.0.0-SNAPSHOT.jar app.jar

COPY opentelemetry-javaagent.jar /agent/

#ENV OTEL_SERVICE_NAME spring-boot-hello-world
#ENV OTEL_TRACES_EXPORTER otlp
#ENV OTEL_METRICS_EXPORTER otlp
#ENV OTEL_LOGS_EXPORTER none
#ENV OTEL_EXPORTER_OTLP_PROTOCOL grpc
#ENV OTEL_EXPORTER_OTLP_ENDPOINT http://open-telemetry-opentelemetry-collector.monitoring:4317
#ENV OTEL_TRACES_SAMPLER parentbased_traceidratio
#ENV OTEL_TRACES_SAMPLER_ARG "0.01"

#ENV JAR_OPTS=""
#ENV JAVA_OPTS=""
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar $JAR_OPTS
#ENTRYPOINT  java -Xms2g -Xmx2g -XX:+UseG1GC -XX:MaxGCPauseMillis=200 -javaagent:/agent/opentelemetry-javaagent.jar  -jar /app.jar

