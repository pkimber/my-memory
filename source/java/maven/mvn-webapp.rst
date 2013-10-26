Web Application
***************

Create
======

Executing the following will create a simple web app:

::

  mvn archetype:create -DarchetypeArtifactId=maven-archetype-webapp -DpackageName=com.sample -DgroupId=com.sample -DartifactId=sample-webapp

Build
=====

To build the WAR file change into the ``my-webapp`` folder:

::

  mvn clean:clean package

Exclude Dependency from WAR
===========================

To exclude ``spring-1.2.6.jar`` from the ``war`` file:

::

  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-war-plugin</artifactId>
        <configuration>
          <warSourceExcludes>**/spring-1.2.6.jar</warSourceExcludes>
        </configuration>
      </plugin>

Note:  This did work on a test project but did not work on a more complex
project.

