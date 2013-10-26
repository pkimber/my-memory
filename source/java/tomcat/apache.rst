Apache
******

Links
=====

- http://tomcat.apache.org/connectors-doc/
- `Proxy Apache Httpd And Tomcat`_
- `Apache/Tomcat Integration`_

Download
========

Downloaded ``mod_jk-apache-2.2.3.so`` from
http://www.apache.org/dist/tomcat/tomcat-connectors/jk/binaries/win32/jk-1.2.19/,
copied to:

::

  C:\tools\Apache2.2\modules

then renamed to ``mod_jk.so``.

Configuration
=============

In Apache ``httpd.conf`` add the following:

::

  LoadModule jk_module modules/mod_jk.so
  <IfModule jk_module>
      JkLogFile "logs/mod_jk.log"
      JkLogLevel info
      JkWorkerProperty worker.list=ajp13
      JkWorkerProperty worker.ajp13.port=8009
      JkWorkerProperty worker.ajp13.host=localhost
      JkWorkerProperty worker.ajp13.type=ajp13
  </IfModule>

  Include "C:/deploy/myfaces-template/apache-conf/myfaces-template.conf"

`Configuration Directives`_

+------------------------+-------------------------------------------------------------------+
| ``JkLogFile``          | The location of the log file.                                     |
|                        | *(why not put it in with the Apache logs?)*                       |
+------------------------+-------------------------------------------------------------------+
| ``JkLogLevel``         | log level, can be debug, info, warn, error or trace               |
|                        | ``info`` should be your default selection for normal operations.  |
+------------------------+-------------------------------------------------------------------+
| ``JkWorkerProperty``   | The worker properties.  This replaces the ``workers.properties``  |
|                        | file used in previous versions.                                   |
+------------------------+-------------------------------------------------------------------+
| ``Include``            | Include application specific configuration for                    |
|                        | ``myfaces-template``.                                             |
+------------------------+-------------------------------------------------------------------+

Create the configuration file for the Tomcat application.  In this example the
file is:

::

  C:/deploy/myfaces-template/apache-conf/myfaces-template.conf

The contents of this file are:

::

  JkMount /myfaces-template ajp13
  JkMount /myfaces-template/ ajp13
  JkMount /myfaces-template/*.jsf ajp13

We are assigning the ``/myfaces-template`` URI to Tomcat.

+------------------------+-------------------------------------------------------------------+
| ``JkMount``            | Assign specific URLs to Tomcat.                                   |
+------------------------+-------------------------------------------------------------------+

Other References
================

Deploy, Context, :doc:`deploy`


.. _`Proxy Apache Httpd And Tomcat`: http://faq.javaranch.com/view?ProxyApacheHttpdAndTomcat
.. _`Apache/Tomcat Integration`: http://wheelersoftware.com/articles/apache-tomcat-integration.html
.. _`Configuration Directives`: http://tomcat.apache.org/connectors-doc/config/apache.html
.. _`..   Apache HowTo`: http://tomcat.apache.org/connectors-doc/howto/apache.html

