ActiveMQ
********

Install
=======

Download ``maven-archetype-ActiveMQ.zip`` from
http://www.webtide.com/resources.jsp.

Extract the zip file to a folder.  I extracted to:

::

  C:\bin\maven-archetype-ActiveMQ\

Build and install the *archetype*:

::

  cd \bin\maven-archetype-ActiveMQ\
  mvn clean package install

Create
======

To create the test application:

::

  mvn archetype:create -DarchetypeGroupId=com.webtide -DarchetypeArtifactId=maven-archetype-ActiveMQ -DarchetypeVersion=1.0-SNAPSHOT -DgroupId=com.sample -DartifactId=sample-jetty-activemq
  cd sample-jetty-activemq

Run
===

To run the application:

::

  mvn jetty:run

Point your browser to http://localhost:8080.

Issues
======

- Had to comment out the ``commons-logging`` ``exclusion`` in the ``pom.xml``
  file.
- Had to create a ``log4j.properties`` file in ``src/main/resources/``.

