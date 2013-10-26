Java Profiler
*************

http://www.yourkit.com

Java Service Wrapper
====================

::

  ../java-service-wrapper/config.html

When capturing a spanshot and working remotely - remember to *Capture and
Transfer*.

JDK 1.5
-------

Installed ``jdk-1_5_0_06-windows-i586-p.exe`` and set ``JAVA_HOME``:

::

  set JAVA_HOME=c:\program files\java\jdk1.5.0_06

To ``wrapper.conf`` (for Java 1.5) added:

::

  wrapper.java.additional.1=-agentlib:yjpagent

Added the profiler bin folder to the path:

::

  SET PATH=C:\Program Files\YourKit Java Profiler 5.0.9\bin\win32;%PATH%

