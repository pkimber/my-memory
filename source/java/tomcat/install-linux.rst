Install - Linux
***************

Debian
======

Install
-------

`How to setup Apache Tomcat 5.5 on Debian Etch`_:

::

  apt-get install tomcat5.5

::

  apt-get install tomcat5.5-admin
  apt-get install tomcat5.5-webapps

Edit ``/etc/default/tomcat5.5`` and set ``JAVA_HOME``:

::

  JAVA_HOME=/usr/local/bin/java

Restart Tomcat:

::

  /etc/init.d/tomcat5 restart

Test

http://toybox:8180/

Configure
---------

Copy web applications to:

::

  /var/lib/tomcat5.5/webapps/


.. _`How to setup Apache Tomcat 5.5 on Debian Etch`: http://www.debianadmin.com/how-to-setup-apache-tomcat-55-on-debian-etch.html
