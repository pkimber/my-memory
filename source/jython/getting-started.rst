Getting Started
***************

Download
========

Download ``jython_installer-*.jar`` from http://www.jython.org/.

Install
=======

Double click the jar... or:

::

  java -jar jython_installer-2.5.2.jar

or... to start the console installer:

::

  java -jar jython_installer-2.2.jar --console

I installed to:

::

  # linux:
  ~/bin/jython2.5.2/

  # Windows
  C:\tools\jython2.2\

Usage
=====

Console
-------

To start the ``jython`` console:

::

  ~/bin/jython2.5.2/jython

Or:

::

  java -jar jython.jar

...if this won't work, you could use the following ``bash`` script:

::

  #!/bin/bash
  CLASSPATH="."
  CLASSPATH=":$CLASSPATH:jython21.jar"
  java -cp $CLASSPATH org.python.util.jython

Script
------

To run a script:

::

  java -jar jython.jar script.py

easy_install and virtualenv
---------------------------

- :doc:`easy_install`
- :doc:`virtualenv`
