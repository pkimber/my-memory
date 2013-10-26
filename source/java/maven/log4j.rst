log4j
*****

log4j.properties
================

Had a project where we did not want the ``log4j.properties`` to be added to the
jar file but we still wanted log4j to work for unit tests.

We moved ``log4j.properties`` from ``src\main\resources`` to the root folder of
the project.

Maven 2
-------

Define the location of the configuration file on the ``mvn`` command line:

::

  mvn -Dlog4j.configuration=file:log4j.properties clean install site dependency:copy-dependencies

Maven 1
-------

Add the following to ``project.properties``:

::

  maven.junit.sysproperties=log4j.configuration
  log4j.configuration=file:${basedir}/log4j.properties

Debug
=====

Maven originally had problems finding the ``log4j.properties`` file.  Add the
``log4j.debug`` to the ``project.properties`` file:

::

  maven.junit.sysproperties=log4j.configuration log4j.debug
  log4j.configuration=file:${basedir}/log4j.properties
  log4j.debug=true

Eclipse
=======

To configure Eclipse to use a ``log4j.properties`` file which is not on the
classpath see: :doc:`../eclipse/log4j`.

