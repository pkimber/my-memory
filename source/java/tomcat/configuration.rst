Configuration
*************

Sample
======

Minimal configuration sample (thanks Simon B):

::

  ../../misc/howto/tomcat/server-nousers.xml
  ../../misc/howto/tomcat/server-jkonly-nousers.xml

Application
===========

To stop Tomcat from running an application, remove the XML file from:

::

  conf/Catalina/localhost/

Memory
======

To update the heap memory for a Windows Service:

::

  cd tomcat-search\bin
  tomcat5 //US//TempSearch --JvmMs 256 --JvmMx 1024

Note:

- In this example, the service name appears as
  ``Apache Tomcat TempSearch``, (remember, when the service is created,
  ``Apache Tomcat`` is automatically prepended to the service name."

- The "``US``" parameter is for *update service*.
- I found this information on these pages:
  `Windows service HOW-TO`_,
  `Increasing JIRA memory`_

Redirect
========

Two options:

Edit the ``index.htm`` file in ``webapps/ROOT`` e.g:

::

  <html>
     <head>
        <meta http-equiv="Refresh" content="0;URL=http://www.google.com">
     </head>
     <body></body>
  </html>

Another option would be to create a new folder with a redirect file in it (e.g.
``/webadmin``) or just use the existing tomcat ``/admin`` folder and replace
the ``index.html`` file with a redirect file so http://mysitename.co.uk/admin
would work.

Service
=======

`Tomcat as a Windows Service`_

See Tomcat - Install - Windows, Service, Configure, :doc:`install`


.. _`Increasing JIRA memory`: http://confluence.atlassian.com/display/JIRA/Increasing+JIRA+memory
.. _`Tomcat as a Windows Service`: http://bugs.sakaiproject.org/confluence/display/DOC/Tomcat+as+a+Windows+Service+(2.5)
.. _`Windows service HOW-TO`: http://tomcat.apache.org/tomcat-5.5-doc/windows-service-howto.html
