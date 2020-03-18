FROM maven:3-jdk-8 AS builder

WORKDIR /app

RUN git clone https://github.com/culturecommunication/ginco.git --branch TMA-2.0.9.8 . \
    && mvn clean package

FROM tomcat:8-jdk8

COPY --from=builder /app/ginco-admin/target/ginco-admin.war /app/ginco-webservices/target/ginco-webservices.war /usr/local/tomcat/webapps/

RUN apt-get update \
    && apt-get install -y libpostgresql-jdbc-java \
    && rm -rf /var/cache/apt/lists/* \
    && ln -s /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/lib/

COPY context.xml /usr/local/tomcat/conf/context.xml
COPY setenv.sh /usr/local/tomcat/bin/setenv.sh
