Install - Gentoo Linux
**********************

Links
=====

`Tomcat Guide`_

Configuration
=============

The configuration files appear to be in:

::

  /etc/tomcat-5.5/

Context
-------

::

  /etc/tomcat-5.5/Catalina/localhost

Port
----

Edit ``server.xml``:

::

  /etc/tomcat-5.5/server.xml

Change the port in the ``Connector`` section:

::

  <Connector port="8080" maxHttpHeaderSize="8192"
      maxThreads="150" minSpareThreads="25" maxSpareThreads="75"
      enableLookups="false" redirectPort="8443" acceptCount="100"
      connectionTimeout="20000" disableUploadTimeout="true" />

Applications
============

The ``webapps`` folder is:

::

  /var/lib/tomcat-5.5/webapps/

Log
===

Error messsages can be viewed in:

::

  /var/log/tomcat-5.5/


.. _`Tomcat Guide`: http://www.gentoo.org/proj/en/java/tomcat-guide.xml

