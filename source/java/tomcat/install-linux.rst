Install - Linux
***************

Ubuntu and Debian
=================

Install
-------

`How to setup Apache Tomcat 5.5 on Debian Etch`_::

  apt-get install tomcat7

Edit ``/etc/default/tomcat7`` and set ``JAVA_HOME``::

  JAVA_HOME=/usr/

.. note:: ``which java`` returned ``/usr/bin/java``.

Old instructions for tomcat 5::

  apt-get install tomcat5.5-admin
  apt-get install tomcat5.5-webapps

Restart Tomcat::

  service tomcat7 restart

Test http://toybox:8180/

Configure
---------

Copy web applications to::

  /var/lib/tomcat7/webapps/


.. _`How to setup Apache Tomcat 5.5 on Debian Etch`: http://www.debianadmin.com/how-to-setup-apache-tomcat-55-on-debian-etch.html
