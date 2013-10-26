Settings
********

Links
=====

- `Settings Reference`_
- `Getting the Most Out of the Maven settings.xml File`_

Location
========

The ``settings.xml`` file is created in your local ``.m2`` repository.

Linux
-----

::

  ~/.m2/settings.xml

Windows Vista:
--------------

::

  C:\Users\Patrick\.m2\settings.xml

Windows XP
----------

::

  C:\Documents and Settings\patrickk\.m2\settings.xml

Documentation
=============

Check out the documentation in the ``settings.xml`` file in your
``[maven2]/conf`` directory...

::

  C:\tools\maven-2.0.4\conf\settings.xml

Local Repository Location
=========================

To set the location of the local repository:

::

  <settings>
    <localRepository>c:/repository/maven2</localRepository>
  </settings>

Mirrors
=======

- Using Mirrors for Repositories, :doc:`mirrors`.

Profiles
========

- See notes on profiles, :doc:`profiles`.

Repositories
============

Add the following to your ``~/.m2/settings.xml`` file:

::

  <settings>
    <activeProfiles>
      <activeProfile>default</activeProfile>
    </activeProfiles>
    <profiles>
      <profile>
        <id>default</id>
        <repositories>
          <repository>
            <id>myserver</id>
            <name>My Development</name>
            <url>http://myserver/repository</url>
            <layout>default</layout>
          </repository>
        </repositories>
      </profile>
    </profiles>
  </settings>

Resources
=========

Properties can be copied from the Maven 2 ``settings.xml`` file,
:doc:`filter-resource-files`


.. _`Settings Reference`: http://maven.apache.org/settings.html
.. _`Getting the Most Out of the Maven settings.xml File`: http://java.dzone.com/tips/getting-most-out-maven

