JProfiler
*********

http://www.ej-technologies.com

Settings
========

Features
--------

*If you are not short on physical memory, it's a good idea to enable class
resolution for the allocation views*.

*Show allocations resolved for each class*

Remote
======

The integration wizard suggests the following changes to set-up the remote
application:

Integration type: [Generic application]

Selected JVM: Sun 1.5.0 (hotspot)

Startup mode: Wait for JProfiler GUI

- Please insert

  ::

    -agentlib:jprofilerti=port=8849  "-Xbootclasspath/a:C:\Program Files\jprofiler4\bin\agent.jar"

  ...into the start command of your remote application right after the java
  command.

- Please add

  ::

    C:\Program Files\jprofiler4\bin\windows

  ...to the environment variable PATH.

A remote session named Remote application on the server will be created that
connects to a running instance of the remote application that is started with
the modified start command.

Commands
--------

::

  set JAVA_HOME=c:\program files\java\jdk1.5.0_06
  SET PATH=C:\Program Files\jprofiler4\bin\windows;%PATH%

Java Service Wrapper
--------------------

Added the following to ``wrapper.conf``:

::

  wrapper.java.additional.1=-agentlib:jprofilerti=port=8849  "-Xbootclasspath/a:C:\Program Files\jprofiler4\bin\agent.jar"

