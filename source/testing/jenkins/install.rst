Install
*******

Linux
=====

Follow these instructions:
https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+Ubuntu

Windows
=======

Download
--------

Download ``hudson.war`` from
https://hudson.dev.java.net/servlets/ProjectDocumentList.

Install
-------

- To start Hudson:

  ::

    java -jar /downloads/hudson/hudson.war

Windows Service
---------------

`Installing Hudson as a Windows service`_

To install the Windows service:

- Make sure Java is available on the ``PATH``.
- Make sure Maven is installed.
- Start Hudson (see previous step).
- Browse to the Hudson web interface, http://localhost:8080/
- Click on *Manage Hudson*.
- Click on *Install as Windows Service*.
- Enter the *Installation Directory*.  I entered ``/tools/hudson/`` (Note:
  probably better to make this a different folder to the one where Hudson was
  started).
- Start the Hudson services from the Windows services dialog.

Uninstall - Windows Service
---------------------------

To uninstall the Windows service:

::

  cd /tools/hudson/
  hudson.exe uninstall

Configuration
=============

Hudson
------

*Manage Hudson*, *Configure System*:

- JDK
- Maven
- SMTP Server

Port
----

::

  /etc/default/jenkins

Project
-------

To set ``MAVEN_OPTS``, *Configure* the project, click *Advanced* in the
*Build* section.  I entered:

::

  -Xms1024M -Xmx1024M -XX:MaxPermSize=256M


.. _`Installing Hudson as a Windows service`: http://hudson.gotdns.com/wiki/display/HUDSON/Installing+Hudson+as+a+Windows+service

