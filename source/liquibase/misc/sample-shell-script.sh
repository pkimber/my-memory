#!/bin/bash
java -jar liquibase.jar \
    --driver=com.mysql.jdbc.Driver \
    --classpath=mysql-connector-java-5.0.6-bin.jar \
    --changeLogFile=db.changelog.xml \
    --logLevel=info \
    --url="jdbc:mysql://server/dev" \
    --username=my-user-name \
    --password=my-password \
    migrate

