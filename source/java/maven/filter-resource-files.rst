Filter Resource Files
*********************

Links
=====

- `How do I filter resource files?`_

Example
=======

Add the following to the ``pom.xml`` file:

::

    <build>
      <resources>
        <resource>
          <directory>src/main/resources</directory>
          <filtering>true</filtering>
        </resource>
      </resources>
    </build>

Create a properties file in ``src/main/resources``:

::

  pom.name=[${pom.name}]
  pom.version=[${pom.version}]
  pom.build.finalName=[${pom.build.finalName} ]
  java.version=[${java.version}]

The name, version and other properties of your product will be inserted into the
properties file.

Settings
========

Properties can be copied from the Maven 2 ``settings.xml`` file:

The contents of:

::

  C:\Documents and Settings\Patrick Kimber\.m2\settings.xml

::

  <settings>
    <activeProfiles>
      <activeProfile>build-howto-menu</activeProfile>
    </activeProfiles>
    <profiles>
      <profile>
        <id>build-howto-menu</id>
        <properties>
          <lucene.repository>/repository/lucene/my-memory</lucene.repository>
        </properties>
      </profile>
    </profiles>
  </settings>

And the corresponding properties file:

::

  lucene.repository=${lucene.repository}

Goal
====

If you want to filter the resource files but not build the project then you
can run ``mvn process-resources`` rather than ``mvn package``.


.. _`How do I filter resource files?`: http://maven.apache.org/guides/getting-started/index.html#How%20do%20I%20filter%20resource%20files?

