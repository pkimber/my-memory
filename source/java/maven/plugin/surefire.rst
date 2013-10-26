Surefire (Unit Testing)
***********************

Links
=====

- http://maven.apache.org/plugins/maven-surefire-plugin

Resources
=========

``getResource``
---------------

Resources can be :doc:`../../java/resource-in-jar` loaded from the test
classes folder.

``basedir``
-----------

Surefire sets a ``basedir`` system property, which you can retrieve with:

::

  System.getProperty("basedir")

http://maven.apache.org/plugins/maven-surefire-plugin/test-mojo.html

Console Output
==============

This doesn't seem to work... but for future reference:

`How to direct test output to the console`_

Skip
====

All Tests
---------

To skip the unit tests:

::

  mvn clean package -Dmaven.test.skip=true
  // or in later versions:
  mvn clean package -DskipTests

or add the following to ``pom.xml``:

::

  <project>
    ...
    <build>
      <plugins>
        <plugin>
          <groupId>org.apache.maven.plugins</groupId>
          <artifactId>maven-surefire-plugin</artifactId>
          <configuration>
            <skip>true</skip>
          </configuration>
        </plugin>

      </plugins>
    </build>
    ...
  </project>

Individual Test
---------------

- Run

  To run an individual test:

  ::

    mvn clean package -Dtest=com.sample.AppTest
    # Probably worth trying this:
    mvn test -Dtest=com.sample.AppTest

  The value for the test parameter is the name of the test class (without the
  extension).

- Skip

  To skip an individual unit test, add the following to ``pom.xml``:

  ::

    <project>
      ...
      <build>
        <plugins>

          <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-surefire-plugin</artifactId>
            <configuration>
              <skip>false</skip>
              <includes>
                <include>**/*.java</include>
              </includes>
              <excludes>
                <exclude>**/GatewayServerTest.java</exclude>
              </excludes>
            </configuration>
          </plugin>

        </plugins>
      </build>
    </project>

  This configuration skips ``GatewayServerTest.java``.  For more information
  on patterns for the inclusion and exclusion of files see
  `Directory-based Tasks from the Apache ANT manual`_.

Issues
======

Class Loading Issues
--------------------

- `Class Loading Issues`_
- `[m2] Forking with Surefire`_

  ::

    java.lang.LinkageError: loader constraints violated when linking javax/xml/namespace/QName class

  Add this to ``pom.xml``:

  ::

      <build>
        <plugins>
          <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-surefire-plugin</artifactId>
            <configuration>
              <childDelegation>false</childDelegation>
            </configuration>
          </plugin>


.. _`How to direct test output to the console`: http://docs.codehaus.org/display/MAVENUSER/Surefire+Plugin
.. _`Directory-based Tasks from the Apache ANT manual`: http://ant.apache.org/manual/dirtasks.html#patterns
.. _`Class Loading Issues`: http://maven.apache.org/plugins/maven-surefire-plugin/examples/class-loading.html
.. _`[m2] Forking with Surefire`: http://www.nabble.com/-m2--Forking-with-Surefire-tf1040245s177.html#a2717169

