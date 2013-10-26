Plugins
*******

Install Plugin
==============

http://maven.apache.org/plugins/maven-install-plugin/index.html

Wanted to install the JMeter jar files into the Maven 2 repository.

::

  mvn install:install-file -DgroupId=jakarta-jmeter -DartifactId=jmeter-core -Dversion=2.1.1 -Dfile=C:\tools\jakarta-jmeter-2.1.1\lib\ext\ApacheJMeter_core.jar -Dpackaging=jar -DgeneratePom=true

This command has the following parameters:

===========  ==========================================  ===============================================================
Parameter    Description                                 Example
===========  ==========================================  ===============================================================
groupId      First level folder name in the repository   ``jakarta-jmeter``
artifactId   Second level folder name in the repository  ``jmeter-core``
version      Version of the jar file                     ``2.1.1``
file         Path and file to the jar file               C:\tools\jakarta-jmeter-2.1.1\lib\ext\ApacheJMeter_core.jar
packaging    Type of file, e.g. jar, zip, war            ``jar``
generatePom  Generate the POM file                       ``true``
===========  ==========================================  ===============================================================

...and installs:

::

  C:\tools\jakarta-jmeter-2.1.1\lib\ext\ApacheJMeter_core.jar

into:

::

  C:\Documents and Settings\patrickk\.m2\repository\jakarta-jmeter\jmeter-core\2.1.1\jmeter-core-2.1.1.jar

The dependency section in the ``pom.xml`` for this jar file is:

::

  <dependency>
    <groupId>jakarta-jmeter</groupId>
    <artifactId>jmeter-core</artifactId>
    <version>2.1.1</version>
  </dependency>

**Note:** See repository.html for information on which repository to use for
deploying dependencies.

Plugin Management
=================

`Optimal Maven Plugin configuration`_

Parent ``pom.xml``:

::

  <build>
    <pluginManagement>
      <plugins>
        <plugin>
          <groupId>org.apache.maven.plugins</groupId>
          <artifactId>maven-release-plugin</artifactId>
          <version>2.0-beta-7</version>
        </plugin>

Module ``pom.xml``:

::

  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-release-plugin</artifactId>
        <configuration>
          <tagBase>svn://127.0.0.1/mycompany/tags/module</tagBase>
        </configuration>
      </plugin>

Version
=======

To find the version of a plugin:

::

  mvn -Dplugin=surefire help:describe

In this example, ``surefire`` is the name of the plugin I am checking.



.. _`Optimal Maven Plugin configuration`: http://www.sonatype.com/people/2008/05/optimal-maven-plugin-configuration/

