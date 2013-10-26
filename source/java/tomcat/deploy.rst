Deploy
******

Links
=====

- `Tomcat Web Application Deployment, A word on Contexts`_
- `Apache Tomcat Configuration Reference, The Context Container`_
- `The Technique of Virtual Deployment in Tomcat`_

Context
=======

To deploy an application outside of the ``webapps`` folder, extract the ``war``
file or copy the exploded application to a folder.  In this example the folder
is:

::

  C:\deploy\myfaces-template\

Create new folders inside the ``conf`` folder of Tomcat.  In this example the
folder names are:

::

  conf\Catalina\localhost\

The folder names are from two places:

- The ``Engine name`` from ``conf/server.xml`` (I think).
- The host name.  In this example ``localhost``.

Inside this folder create an XML file to hold the context (web application).
In this example the file is called ``myfaces-template.xml``.  Here are the
contents of a typical (Tomcat 6) file:

::

  <Context
      cachingAllowed="true"
      cookies="true"
      privileged="false"
      docBase="c:/deploy/myfaces-template"
      reloadable="true"
      swallowOutput="false"
      useNaming="true">
      <Valve
          className="org.apache.catalina.valves.AccessLogValve"
          directory="c:/deploy/myfaces-template/logs"
          prefix="localhost_access_log."
          suffix=".txt"
          pattern="common"
      />
  </Context>

For Tomcat 5 you will probably need to add the ``path`` attribute.

+---------------------+----------------------------------------------------------------------------+
| ``cachingAllowed``  | The cache for static resources will be used                                |
+---------------------+----------------------------------------------------------------------------+
| ``cookies``         | If you want cookies to be used for session identifier communication        |
+---------------------+----------------------------------------------------------------------------+
| ``path``            | For Tomcat 6 (see :doc:`issues`):                                          |
|                     | The value of this field must not be set except when statically defining    |
|                     | a Context in ``server.xml``, as it will be infered from the filenames      |
|                     | used for either the ``.xml`` context file or the ``docBase``.              |
+---------------------+----------------------------------------------------------------------------+
| ``privileged``      | Set to true to allow this context to use container servlets, like the      |
|                     | manager servlet.                                                           |
+---------------------+----------------------------------------------------------------------------+
| ``docBase``         | The Document Base (also known as the Context Root) directory for this      |
|                     | web application, or the pathname to the web application archive file       |
|                     | (if this web application is being executed directly from the WAR file).    |
|                     | You may specify an absolute pathname for this directory or WAR file, or    |
|                     | a pathname that is relative to the appBase directory of the owning Host.   |
+---------------------+----------------------------------------------------------------------------+
| ``reloadable``      | Set to true if you want Catalina to monitor classes in                     |
|                     | ``/WEB-INF/classes/`` and ``/WEB-INF/lib`` for changes,                    |
|                     | and automatically reload the web application if a change is detected.      |
|                     | This feature is very useful during application development, but it         |
|                     | requires significant runtime overhead and is not recommended for use on    |
|                     | deployed production applications.                                          |
+---------------------+----------------------------------------------------------------------------+
| ``swallowOutput``   | If the value of this flag is true, the bytes output to ``System.out``      |
|                     | and ``System.err`` by the web application will be redirected to the        |
|                     | web application logger.                                                    |
+---------------------+----------------------------------------------------------------------------+
| ``useNaming``       | Set to true to have Catalina enable a JNDI ``InitialContext``.             |
+---------------------+----------------------------------------------------------------------------+
| ``Valve``           | A ``Valve`` element represents a component that will be inserted into      |
|                     | the request processing pipeline for the associated Catalina container.     |
|                     | http://tomcat.apache.org/tomcat-6.0-doc/config/valve.html                  |
+---------------------+----------------------------------------------------------------------------+

See :doc:`issues` for details of an error which occurs when the ``path``
attribute is missing.

Permissions
===========

From:

http://www.springframework.org/docs/MVC-step-by-step/Spring-MVC-step-by-step-Part-1.html

If you are on a system where you are not the owner of the Tomcat install, then
the Tomcat owner must either grant you full access to the webapps directory or
the owner must create a new directory named 'springapp' in the 'webapps'
directory of the Tomcat installation, and also give you full rights to deploy
to this newly created directory.

On Linux I run the command:

::

  chmod a+rwx springapp

to give everybody full rights to this directory.


.. _`Apache Tomcat Configuration Reference, The Context Container`: http://tomcat.apache.org/tomcat-6.0-doc/config/context.html
.. _`The Technique of Virtual Deployment in Tomcat`: http://techtracer.com/2008/04/26/the-technique-of-virtual-deployment-in-tomcat/
.. _`Tomcat Web Application Deployment, A word on Contexts`: http://tomcat.apache.org/tomcat-6.0-doc/deployer-howto.html#A%20word%20on%20Contexts
