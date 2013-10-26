JVM
***

The Java virtual machine (JVM) has built-in instrumentation that enables you to
monitor and manage it using JMX.

http://java.sun.com/j2se/1.5.0/docs/guide/management/agent.html

To enable the JMX agent and configure its operation, you must set certain
system properties when you start the Java virtual machine (JVM).  You set a
system property on the command-line as follows:

::

  java -Dproperty=value ...

Remote Monitoring and Management
================================

To enable monitoring and management from remote systems, set this system
property when you start the JVM:

::

  com.sun.management.jmxremote.port=portNum

Disabling Security
------------------

Password authentication for remote monitoring is enabled by default. To disable
it, set the following system property when you start the JVM:

::

  com.sun.management.jmxremote.authenticate=false

To disable SSL for remote monitoring, set this system property when you start
the JVM:

::

  com.sun.management.jmxremote.ssl=false

**Warning:** This configuration is insecure: any remote user who knows (or
guesses) your JMX port number and host name will be able monitor and control
your Java application and platform. While it may be acceptable for development,
it is not recommended for production systems.

Example
=======

Running my application on ``server``, monitoring using jManage from my local
workstation.  The application runs using the Java Service Wrapper.

Added the following to the Java Service Wrapper ``wrapper.conf`` file:

::

  wrapper.java.additional.1=-Dcom.sun.management.jmxremote.port=1098
  wrapper.java.additional.2=-Dcom.sun.management.jmxremote.authenticate=false
  wrapper.java.additional.3=-Dcom.sun.management.jmxremote.ssl=false

This should be equivalent to adding the following to a Java command line:

::

  java -Dcom.sun.management.jmxremote.port=1098 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false

Started jManage.  See :doc:`../jmanage/jmanage` for more information.  I used
the following url for the JMX service:

::

  service:jmx:rmi:///jndi/rmi://server:1098/jmxrmi

