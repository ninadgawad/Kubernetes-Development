FROM ubuntu
RUN yum install jdk-11
ENV JAVA_HOME=/usr/bin

COPY log4j2.xml /conf
COPY app.jar /usr/bin

CMD ["java -jar","app.jar"]
