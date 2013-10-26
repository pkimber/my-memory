Setup
*****

Environment variables

The environment variables ``ANT_HOME``, ``JAVA_HOME``, and ``PATH`` must be set
(eg, Settings - Control Panel - System - Advanced - Environment Variables -
System Variables).

::

  ANT_HOME=C:\Tools\apache-ant-1.6.5
  JAVA_HOME=C:\Tools\jdk1.5.0_03
  PATH=%PATH%;%ANT_HOME%\bin

To get started with building with ANT see:
http://ant.apache.org/manual/tutorial-HelloWorldWithAnt.html and:

::

  C:\Development\java\learning\ant-tutorial-1

Step 1
======

Simple build with build.xml.v1 and HelloWorld.java.v1

::

  ant compile
  ant jar
  ant run

or:

::

  ant compile jar run

And if you want to clean the project:

::

  ant clean

Step 2
======

More efficient build with build.xml.v2 and HelloWorld.java.v1

::

  ant

Step 3
======

Full application including an external library (log4j) To build just use ant.

