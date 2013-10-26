Configuration
*************

Debug
=====

To the end of ``wrapper.conf``, add:

::

  wrapper.debug=true

VM Parameter
============

http://wrapper.tanukisoftware.org/doc/english/prop-java-additional-n.html

Requirement to *Add appropriate VM parameter to the command line of Java
application*.

e.g.

::

  java -Xrunyjpagent FooClass

To ``wrapper.conf`` added:

::

  wrapper.java.additional.1=-Xrunyjpagent

YourKit Java Profiler
=====================

See :doc:`./yourkit/java-profile`

