Linux
*****

Classpath
=========

On Windows the classpath is separated with a semi-colon,
on Linux it should be separated using the colon character (``:``) e.g.:

::

  java -cp "target/app.jar:target/dependency/commons-logging-1.0.4.jar" com.company.App

To run a command from a script, you can build up a class path like this:

::

  #!/bin/bash
  CLASSPATH="."
  CLASSPATH=":$CLASSPATH:jython.jar"
  java -cp $CLASSPATH org.python.util.jython

Install
=======

The Continuum, Service install notes, :doc:`../continuum/install`, are my
current *best attempt* at setting up a Linux Java environment.

Debian
------

Follow the Debian Java notes, :doc:`../linux/debian/java`.

SuSE
----

Follow the SuSE Java notes, :doc:`../linux/suse/java`.

Ubuntu
------

Follow the Ubuntu Java notes, :doc:`../linux/ubuntu/java`
