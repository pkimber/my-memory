Usage
*****

Links
=====

- `Profiler4j is an open-source CPU profiler for Java.`_

Install
=======

Download and install.  I installed to:

::

  C:\tools\profiler4j-1.0-beta2

Tomcat
======

Add the following to the Tomcat configuration (the path to Profiler4J will
change if you installed to a different folder), *Java*, *Java Options*:

::

  -javaagent:C:\tools\profiler4j-1.0-beta2\agent.jar=waitconn=true

::

  ../../images/howto/profiler4j/apache-tomcat-properties.gif

Start Tomcat.

Note: Tomcat will not start-up until we connect using the Profiler4J console.

To start the console:

::

  java -jar c:\tools\profiler4j-1.0-beta2\console.jar

Click the connect button and Tomcat should complete it's startup.



.. _`Profiler4j is an open-source CPU profiler for Java.`: http://profiler4j.sourceforge.net

