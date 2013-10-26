Issues
******

OutOfMemoryError
================

Hudson
------

If running Hudson as a Windows service, update the ``-Xmx512m`` value in
``hudson.xml``.

Maven
-----

To increase the memory available to Maven, set ``MAVEN_OPTS`` in the Hudson
configuration: See :doc:`install`.

Resources
=========

Even though I had set ``MAVEN_OPTS`` in ``mvn.bat`` (see
:doc:`../../java/maven/issues` - Issues, OutOfMemoryError, Windows), I kept
getting resource issues e.g:

::

  The system is out of resources.
  Consult the following stack trace for details.
  java.lang.OutOfMemoryError: Java heap space

To solve the problem, see :doc:`config`...

