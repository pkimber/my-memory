Tomcat
******

Links
=====

- http://mojo.codehaus.org/tomcat-maven-plugin/
- `How to create a Maven web app and deploy to Tomcat`_

Configuration
=============

Add this section to the ``pom.xml`` file setting the name of your server (in
this example ``tomcat-localhost``):

::

  <build>
    <pluginManagement>
      <plugins>
        <plugin>
          <groupId>org.codehaus.mojo</groupId>
          <artifactId>tomcat-maven-plugin</artifactId>
          <configuration>
            <server>tomcat-localhost</server>
          </configuration>
        </plugin>
      </plugins>
    </pluginManagement>
  </build>

To your :doc:`settings` file add the authentication details for this server:

::

  <settings>
    <servers>
      <server>
        <id>tomcat-localhost</id>
        <username>tomcat</username>
        <password>tomcat</password>
      </server>
    </servers>
  </settings>

Usage
=====

Deploying a WAR file
--------------------

The simplest way to deploy a WAR project to Tomcat is to type:

::

  mvn tomcat:deploy

This goal will assemble and deploy the WAR file to Tomcat manager using HTTP
PUT.

Redeploy
--------

::

  mvn package tomcat:redeploy

Undeploy
--------

::

  mvn tomcat:undeploy

Embedded Tomcat
---------------

A project can be run under an embedded Tomcat server by typing:

::

  mvn tomcat:run

Deploying an exploded WAR directory
-----------------------------------

To avoid building a WAR file upon deployment, a WAR directory can instead be
deployed to Tomcat by typing:

::

  mvn war:exploded tomcat:exploded

Information
-----------

*JNDI*

To list all the JNDI resources:

::

  mvn tomcat:resources

*Session*

::

  mvn tomcat:sessions


.. _`How to create a Maven web app and deploy to Tomcat`: https://www.burlesontech.com/wiki/display/btg/How+to+create+a+Maven+web+app+and+deploy+to+Tomcat+-+fast

