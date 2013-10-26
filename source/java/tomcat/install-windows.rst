Install - Windows
*****************

**Note**: See notes on issues with Vista, :doc:`issues`.

Download the Windows Executable, ``apache-tomcat-5.5.17.exe`` from
http://tomcat.apache.org/.

To install, run the downloaded file.

If using a J2SE 1.4 JRE, the compatibility package must be downloaded and
expanded inside the folder where Tomcat was installed:

Downloaded:

::

  apache-tomcat-5.5.12-compat.zip

Extracted to:

::

  C:\tools\Tomcat 5.5\

Examples
========

Installed with examples etc.  To run the sample site:

http://localhost:8080/

Java JRE
========

Used the "Configure..." option on the task bar menu to change the JRE...

Admin and Manager
=================

User Name

::

  tomcat

(was ``admin``)

Password

::

  tomcat

(was ``password``)

User Name and Password
----------------------

To change the manager user name and password to ``tomcat``, ``tomcat``.  Edit:

::

  C:\tools\Tomcat 5.5\conf\tomcat-users.xml

Add ``manager`` to the ``roles`` attribute:

::

  <user username="tomcat" password="tomcat" roles="tomcat,manager"/>

Port
====

To change the port number:

- Edit the file ``conf/server.xml``
- Search for the entry ``<Service name="Catalina">``
- Change the value of the port attribute in the HTTP Connector element to a
  value of your choice.
- Restart Tomcat.

Command Line
============

**Note**: When setting ``CATALINA_HOME`` do not append a trailing slash to the
path name.

Start
-----

::

  SET CATALINA_HOME=C:\tools\apache-tomcat-5.5.20
  C:\tools\apache-tomcat-5.5.20\bin\startup.bat

Stop
----

::

  SET CATALINA_HOME=C:\tools\apache-tomcat-5.5.20
  C:\tools\apache-tomcat-5.5.20\bin\shutdown.bat

Service
=======

`Windows service HOW-TO`_

Install
-------

If you install Tomcat using the archive rather than the installer, you can
create the Windows service by running "``bin/service.bat``".

To specify the name of the service (useful if you want to run multiple copies
of Tomcat) use a parameter:

::

  bin\service.bat install my-service-name

**Note**:

- The service name (``my-service-name`` in this example), will be appended to
  the words, ``Apache Tomcat``.  So if you install the service, ``MediaServer``
  using the command, the name in Windows Services will appear as
  ``Apache Tomcat MediaServer``.
- The service name must be alpha numeric (no spaces or punctuation).  If you
  don't follow this rule, you will get a pop-up message saying ``NonAlpha 45``.

Memory
------

For details on how to change the memory settings, see :doc:`configuration`.

JVM
---

To specify a particular JVM:

::

  SET JAVA_HOME=%JAVA6_HOME%
  bin\service.bat install my-service-name

Remove
------

To remove the service (remember to specify the service name if you need to):

::

  bin/service.bat remove my-service-name

**Note**: See the previous note ref service names e.g. if the name in *Windows
Services* is ``Apache Tomcat MediaServer``, then run:

::

  bin/service.bat remove MediaServer

Configure
---------

Change into the Tomcat folder:

::

  bin\tomcat5w //ES//my-service-name

Service Properties

::

  ../../images/howto/tomcat/service-properties.gif


.. _`Windows service HOW-TO`: http://tomcat.apache.org/tomcat-5.5-doc/windows-service-howto.html

