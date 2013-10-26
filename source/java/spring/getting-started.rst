Getting Started
***************

Spring JPA (Hibernate)
======================

Download
--------

Download ``maven-archetype-SpringJpa.zip``, *Spring JPA* from the WebTide,
`Maven Archetypes for Web Applications`_

Install
-------

Extract and install the archetype:

::

  cd maven-archetype-SpringJpa
  mvn install

Project
-------

Change to your development folder and create the project:

::

  mvn archetype:create -DarchetypeGroupId=com.webtide -DarchetypeArtifactId=maven-archetype-SpringJpa -DarchetypeVersion=1.0 -DgroupId=com.sample -DartifactId=sample-spring-jpa

Database
--------

Change into the project folder and start the HSQL database:

::

  mvn install

Application
-----------

To start the application, open another command window, change into the project
folder:

::

  mvn jetty:run

To view the application browse to http://localhost:8080/


.. _`Maven Archetypes for Web Applications`: http://www.webtide.com/resources.jsp

