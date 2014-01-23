Issues
******

Caching
=======

Tomcat compiles the jsp files into ``class`` files.  These can be deleted by
stopping Tomcat and removing the folder for your application in this folder:

::

  work/Catalina/localhost/

Note: If you are using the Eclipse, tomcat plugin,
:doc:`../../eclipse/plugin-tomcat`, the folder will be in the root of your
project e.g. ``~/projects/myy-app/work/``.

Failed creating java
====================

- `Can't register Tomcat as Windows service on some computers, under Java6`_
- `Tomcat Error - prunsrv.c Failed creating java (jvm.dll)`_

I updated Java to version 1.6, removed and re-installed the service, and get
this error in the ``jakarta_service_20081231.log`` (Tomcat starts without any
problem using the ``bin/startup.bat`` file):

::

  [2009-03-27 11:33:10] [173  javajni.c] [error]
  The specified module could not be found.
  [2009-03-27 11:33:10] [924  prunsrv.c] [error]
  Failed creating java E:\Software\Java\jdk1.6.0_11\jre\bin\server\jvm.dll

To solve the problem copy ``msvcr71.dll`` to the tomcat ``bin`` folder:

::

  copy msvcr71.dll \tools\tomcat\bin\

There was a copy of ``msvcr71.dll`` on my workstation at some stage!

IllegalArgumentException
========================

Trying to deploy an application using a context file, :doc:`deploy`:

::

  SEVERE: Error deploying configuration descriptor myfaces-template.xml
  java.io.IOException: java.lang.IllegalArgumentException: Context path is required

::

  2007-01-15 10:54:03 StandardHost[localhost]: Error deploying application at context path null
  java.lang.IllegalArgumentException: Context path is required

I was missing the ``path`` attribute in the ``Context`` tag:

::

  <!-- extract of conf/Catalina/localhost/myfaces-template.xml -->
  <Context
      cachingAllowed="true"
      cookies="true"
      privileged="false"
      docBase="/usr/local/bin/myfaces-template"
      path="/myfaces-template"
      ...

`The Context Container`_ guide for Tomcat 6 says *The value of this field must
not be set except when statically defining a Context in server.xml, as it will
be infered from the filenames used for either the .xml context file or the
docBase* `The Context Container, Tomcat 5`_ guide for Tomcat 5 does not have
this paragraph.

JVM/JDK/JRE
===========

If Tomcat starts without a problem using the ``bin/startup.bat`` file, but
tries to use an old JVM when run as a service:

::

  [2008-12-31 12:40:37] [986  prunsrv.c] [error]
  Failed creating java c:\Program Files (x86)\Java\jdk1.5.0_14\jre\bin\server\jvm.dll

...remove and re-install the service.

NoClassDefFoundError
====================

Had all kinds of nasty errors including:

::

  java.lang.NoClassDefFoundError: javax/faces/FacesException

Looking in the actual web app folder:

::

  C:\tools\Tomcat 5.5\webapps\sample-jsf-app\

I can see that the war file was not properly extracted e.g.

Only one jar file in:

::

  C:\tools\Tomcat 5.5\webapps\sample-jsf-app\WEB-INF\lib\

To solve the problem have to fiddle around until the war file extracts
correctly.  I stopped Tomcat, deleted:

::

  C:\tools\Tomcat 5.5\webapps\sample-jsf-app\

and:

::

  C:\tools\Tomcat 5.5\webapps\sample-jsf-app.war

Restarted the server, redeployed and everything extracted correctly.

Vista
=====

I don't understand the permissions required to install and run a service under
Windows Vista.  For now, just download the ``zip`` file rather than the
"*Windows Service Installer*".

The server can be started and stopped by running the batch files:

::

  c:
  cd \tools\apache-tomcat-5.5.25\
  bin\startup.bat
  bin\shutdown.bat


.. _`Can't register Tomcat as Windows service on some computers, under Java6`: http://forums.sun.com/thread.jspa?threadID=5121172
.. _`The Context Container, Tomcat 5`: http://tomcat.apache.org/tomcat-5.0-doc/config/context.html
.. _`The Context Container`: http://tomcat.apache.org/tomcat-6.0-doc/config/context.html
.. _`Tomcat Error - prunsrv.c Failed creating java (jvm.dll)`: http://www.mkyong.com/tomcat/tomcat-error-prunsrvc-failed-creating-java-jvmdll/
