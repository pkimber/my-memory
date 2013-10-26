Getting Started
***************

Links
=====

- http://maven.apache.org/getting-started.html
  Getting Started

Getting Started
===============

The first step is to create the project structure:

::

  mvn archetype:generate -DgroupId=com.sample -DartifactId=my-sample-app -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false

*Note*:

- Before running ``mvn`` commands make sure you change into the folder
  where your application was generated e.g.

  ::

    cd \sample-app\

- To run in interactive mode:

  ::

    mvn archetype:generate

Commands
========

Compile
-------

::

  mvn compile

Compile and run tests.
----------------------

::

  mvn test

To skip the unit tests see section on the surefire plugin in
:doc:`plugin/surefire`.

Create a jar file.
------------------

::

  mvn package

To skip the unit tests see section on the surefire plugin in
:doc:`plugin/surefire`.
  
Help
----

If you want to find out what the plugin's configuration options:

::

  mvn help:describe

e.g. To check the configuration options for the ``maven-compiler-plugin``.

::

  mvn help:describe -DgroupId=org.apache.maven.plugins -DartifactId=maven-compiler-plugin -Dfull=true

Install the jar file in the local maven repository
--------------------------------------------------

::

  mvn install


To skip the unit tests see section on the surefire plugin in
:doc:`plugin/surefire`.

To clean the project:
---------------------
  
::

  mvn clean

Create a WAR file:
------------------

- http://maven.apache.org/plugins/maven-war-plugin/

  ::

    mvn war:war

Install Dependency JAR
----------------------

- See :doc:`plugin/dependency`.

JEE
===

::

  mvn archetype:create -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-j2ee-simple -DgroupId=com.sample -DartifactId=sample-j2ee-app

Note:
  
The project will throw this error:

::

  org.apache.maven.reactor.MavenExecutionException: Could not find the model file 'C:\development\sample-j2ee-app\site\pom.xml'. for project unknown
          at org.apache.maven.DefaultMaven.getProjects(DefaultMaven.java:378)
          at org.apache.maven.DefaultMaven.doExecute(DefaultMaven.java:290)

...until you edit the parent <<<pom.xml>>> and comment out the <<<site>>> module:

::

  <modules>
     <module>projects</module>
     <module>primary-source</module>
     <module>servlets</module>
     <module>ejbs</module>
     <module>ear</module>
     <!--
     <module>site</module>
     -->
  </modules>

Multiple Modules
================

Create a ``pom.xml`` file in the folder below the other two projects:

::

  C:\development\learning\maven2\getting-started\
  
  <project>
    <modelVersion>4.0.0</modelVersion>
    <groupId>com.mycompany.app</groupId>
    <version>1.0-SNAPSHOT</version>
    <artifactId>app</artifactId>
    <packaging>pom</packaging>
    <modules>
      <module>my-app</module>
      <module>my-webapp</module>
    </modules>
  </project>

Created a dependancy to the my-app jar in:

::

  C:\development\learning\maven2\getting-started\my-webapp\pom.xml
  
  <dependency>
    <groupId>com.mycompany.app</groupId>
    <artifactId>my-app</artifactId>
    <version>1.0-SNAPSHOT</version>
  </dependency>

Added a parent element to:

::

  C:\development\learning\maven2\getting-started\my-webapp\pom.xml
  and:
  C:\development\learning\maven2\getting-started\my-app\pom.xml
  
  <parent>
    <groupId>com.mycompany.app</groupId>
    <artifactId>app</artifactId>
    <version>1.0-SNAPSHOT</version>
  </parent>

To build from:

::

  C:\development\learning\maven2\getting-started\

  m2 clean:clean install

To view the effective POM:
  
::

  mvn help:effective-pom

Diagnostics
===========

::

  mvn -e package

or:
  
::

  mvn -X package

Offline
=======

- http://cvs.peopleware.be/training/maven/maven2/mvnCommand.html

  Work offline:

  ::

    mvn -o ...

Quiet
=====

::

  mvn -q


Update
======

To update all plugins, run the normal maven command and add the ``-up``
(or ``-U``) option:
  
::

  mvn -up ...
