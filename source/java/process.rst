Process
*******

Links
=====

- `Hey Java process - who are you?`_
- `Kill specific Java process on Windows XP`_
- `Executing Native Windows Processes From Java`_

jps - Java Virtual Machine Process Status Tool
==============================================

To list the processes:

::

  \tools\jdk1.6.0\bin\jps -l

...or for more information:

::

  \tools\jdk1.6.0\bin\jps -vlm

Issues
======

Cannot see local process
------------------------

I think this is probably the same issue as we get in JMX.  For more
information see JMX - Java 1.6, Issues, Connection, :doc:`./jmx/jmx-jdk6`.

History
=======

22/07/2008 10:08:43
-------------------

::

  Re: list of java process
  25-Oct-2004 05:19 (reply 3 of 3)

  yes, note you can use jvmstat for earlier version of Java (1.4.x)
  http://java.sun.com/performance/jvmstat/



.. _`Hey Java process - who are you?`: http://tech.puredanger.com/2007/05/10/jps/
.. _`Kill specific Java process on Windows XP`: http://www.irixtech.com/java/hacks/kill-specific-java-process-windows-xp
.. _`Executing Native Windows Processes From Java`: http://www.irixtech.com/java/hacks/executing-native-windows-processes-from-java

