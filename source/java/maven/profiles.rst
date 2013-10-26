Profiles
********

Links
=====

- `The Developer Corner - Maven Profiles`_
- `Maven profiles, filters, resources, and final artifact name`_

Command Line
============

To select a different profile use the ``-P`` parameter.

e.g. this command will use the ``create-wrapper-3-2-0`` profile rather than the
active profile:

::

  mvn clean package -P create-wrapper-3-2-0

Diagnostics
===========

::

  mvn help:active-profiles

This goal can be combined with other parameters e.g.

::

  mvn -P skip-test help:active-profiles

POM
===

To specify a profile within the ``pom.xml`` file:

::

  	<profiles>
  		<profile>
  			<id>my-local</id>
  			<activation>
  				<activeByDefault>true</activeByDefault>
  			</activation>
  			<build>
  				<finalName>myapp</finalName>
  			</build>
  		</profile>

*I haven't tested this... just found it while browsing around*.

Settings
========

To create a profile in the ``settings.xml`` file:

::

  <settings>
    <profiles>
      <profile>
        <id>skip-test</id>
        <properties>
          <maven.test.skip>true</maven.test.skip>
        </properties>
      </profile>
    </profiles>
  </settings>

To set the active profile:

::

  <settings>
    <activeProfiles>
      <activeProfile>skip-test</activeProfile>
    </activeProfiles>
    <profiles>
      <profile>
        <id>skip-test</id>

For more information on the settings file, :doc:`settings`.


.. _`The Developer Corner - Maven Profiles`: http://thedevelopercorner.blogspot.com/2007/02/maven-profiles.html
.. _`Maven profiles, filters, resources, and final artifact name`: http://jee-bpel-soa.blogspot.com/2009/02/maven-profiles-filters-resources-and.html

