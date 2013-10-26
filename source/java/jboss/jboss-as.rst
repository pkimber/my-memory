Application Server
******************

Install
=======

Downloaded ``jems-installer-1.2.0.GA.jar`` from
`JBoss Application Server Downloads`_.

Ran the installer.

- Installed to:

  ::

    C:\tools\jboss-4.0.5.GA

- For *Seam* we must install ``ejb3``:

  ::

    ../../images/howto/jboss/jems-install-ejb3.gif

Logging
=======

`Separating Application Logs`_

Edit:

::

  C:\tools\jboss-4.0.5.GA\server\default\conf\log4j.xml

Add the following sections:

::

  <appender name="application-log" class="org.apache.log4j.FileAppender">
      <errorHandler class="org.jboss.logging.util.OnlyOnceErrorHandler"/>
      <param name="Append" value="false"/>
      <param name="File" value="${jboss.server.home.dir}/log/application.log"/>
      <layout class="org.apache.log4j.PatternLayout">
          <param name="ConversionPattern" value="%d{ABSOLUTE} %-5p [%c{1}] %m%n"/>
      </layout>
  </appender>

  <category name="com.sample">
      <appender-ref ref="application-log"/>
  </category>

Re-start the application server.  The log will appear here:

::

  C:\tools\jboss-4.0.5.GA\server\default\log\application.log

Security
========

JAAS security domain for the JMX access points:

=================  ==========
Admin user name    ``admin``
Admin password     ``adm1n``
=================  ==========

Start
=====

To start the server:

::

  cd C:\tools\jboss-4.0.5.GA\
  bin\run.bat



.. _`JBoss Application Server Downloads`: http://labs.jboss.com/portal/jbossas/download
.. _`Separating Application Logs`: http://wiki.jboss.org/wiki/Wiki.jsp?page=SeparatingApplicationLogs

