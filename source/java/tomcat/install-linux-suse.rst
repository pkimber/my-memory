Install - SuSE Linux
********************

Install
=======

Install Tomcat using YaST in SuSE

Configuration
-------------

Web apps folder:

::

  /usr/share/tomcat5/webapps
  /srv/www/tomcat5/base/webapps

To change the port number edit:

::

  /etc/tomcat5/base/server.xml

Here is a ``diff`` output showing how I changed the port from ``8080`` to
``8081``:

::

  myserver:~ # diff /home/patrickk/temp/server.xml /etc/tomcat5/base/server.xml
  92c92
  <     <Connector port="8080"

  >     <Connector port="8081"

Logging
-------

The log output is to:

::

  /usr/share/tomcat5/logs/
  /srv/www/tomcat5/base/logs/
  /var/log/tomcat5/base/catalina.out

Manual Install
==============

Download:

::

  jakarta-tomcat-5.5.9.tar.gz

Extract to:

::

  /usr/local/bin/jakarta-tomcat-5.5.9/

For compatibility with Java 1.4, download:

::

  jakarta-tomcat-5.5.9-compat.tar.gz

Extract to:

::

  /usr/local/bin/jakarta-tomcat-5.5.9/

Start
=====

To start Tomcat (as root):

::

  /usr/local/bin/jakarta-tomcat-5.5.9/bin/startup.sh

Yep! Is working.

Stop
====

To stop Tomcat

::

  /usr/local/bin/jakarta-tomcat-5.5.9/bin/shutdown.sh

