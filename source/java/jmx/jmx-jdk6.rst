Java 1.6
********

Links
=====

- `jconsole - Java Monitoring and Management Console`_
- `Using JConsole`_
- `FAQ: JConsole and Remote Management`_
- `JConsole, a poor man's Java profiler`_
  ...how to set up JConsole in a server environment...
- Netbeans - Links - JConsole, :doc:`../netbeans/links`.

Setup
=====

Using JMX with Java 1.6 is very simple.

If you are monitoring an application running locally, then simply start it
using the Java 1.6 JVM...

If you are monitoring a remote application, it will need to be started with the
following parameters:

::

  -Dcom.sun.management.jmxremote.port=1098
  -Dcom.sun.management.jmxremote.authenticate=false
  -Dcom.sun.management.jmxremote.ssl=false

Run *JConsole* which you can find in the JDK ``bin`` folder.

On my workstation it can be found in:

::

  C:\tools\jdk1.6.0\bin\jconsole.exe

You should be able to attach to local processes and monitor them... for remote
processes specify the server name and port (the port in the example above is
``1098``).

JConsole - Remote Connection:

::

  ../../images/howto/jmx/jconsole-remote-connection.gif

Issues
======

Connection
----------

If you find that JConsole cannot see the process you are trying to monitor:

*put briefly the answer is: set the tmp variable to c:\temp for the process
calling the application as well as the process calling the monitoring tool*.

::

  set TMP=c:\temp\
  \tools\jdk1.6.0\bin\jconsole.exe

::

  set TMP=c:\temp\
  java -cp ....

- `Developer Forums - Problem with JConsole`_
- `JConsole local process list on Windows systems`_
- `Cannot see local process list`_

*20/03/2007 08:56*

Trying to be clever, I set the Windows environment variable ``TMP`` to
``c:\\temp\`` and JConsole could no longer see the process.

To solve the problem I removed ``TMP`` and ``TEMP`` from the
*User variables...* and left them set at the default for *System variables*
(which is ``C:\\WINDOWS\\TEMP``).

Java 1.6
--------

You will have to make sure your project is built using Java 1.6... so don't
forget to do a clean if you cannot attach to the process.

jps - Java Virtual Machine Process Status Tool
----------------------------------------------

Java - Process, :doc:`../javaprocess`.



.. _`jconsole - Java Monitoring and Management Console`: http://java.sun.com/javase/6/docs/technotes/tools/share/jconsole.html
.. _`Using JConsole`: http://java.sun.com/javase/6/docs/technotes/guides/management/jconsole.html
.. _`FAQ: JConsole and Remote Management`: http://java.sun.com/javase/6/docs/technotes/guides/management/faq.html
.. _`JConsole, a poor man's Java profiler`: http://blogs.boxysystems.com/2007/7/20/jconsole-a-poor-man-s-java-profiler
.. _`Developer Forums - Problem with JConsole`: http://forum.java.sun.com/thread.jspa?forumID=17&threadID=730397
.. _`JConsole local process list on Windows systems`: http://blogs.sun.com/lmalventosa/entry/jconsole_local_process_list_on
.. _`Cannot see local process list`: http://forums.sun.com/thread.jspa?threadID=5133218

