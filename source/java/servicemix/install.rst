Install
*******

http://servicemix.org/

Checkout https://svn.apache.org/repos/asf/incubator/servicemix/trunk to:

::

  C:\src\servicemix\

Build
=====

Maven 1
-------

**Must use Java 1.5**

::

  c:
  cd \src\servicemix\
  maven

Note: Must run ``maven`` with the default goal (i.e. do not use ``install``
or ``jar``).

Added:

::

  maven.test.skip=true

to:

::

  project.properties

Examples
--------

To build the examples... use ``ant`` and a 1.4 version of the JDK.

Maven 2
=======

*Does not appear to work!*

Build from source with Maven 2:

::

  c:
  cd \src\servicemix\
  mvn install

