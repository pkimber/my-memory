BIRT - Viewer
*************

Links
=====

- Installing the BIRT Viewer in Tomcat
  http://www.eclipse.org/birt/phoenix/deploy/viewerSetup.php

Download
========

Download ``birt-runtime-2_0_1.zip``, ``itext-1.3.jar`` and ``prototype.js``
from the Eclipse download site.

Install
=======

Extract the ``birt-runtime`` zip file to a temporary location.  Then copy the
``Web Viewer Example`` folder to the *Tomcat*, ``webapps`` folder:

::

  su root
  cd /opt/tomcat5/webapps
  mv /home/patrick/temp/birt-runtime-2_0_1/Web\ Viewer\ Example/ .

Rename this folder to ``birt-viewer``.

Copy the support files into their correct folders:

::

  cp /home/patrick/download/eclipse/itext-1.3.jar /opt/tomcat5/webapps/birt-viewer/plugins/org.eclipse.birt.report.engine.emitter.pdf/lib
  cp /home/patrick/download/eclipse/prototype.js /opt/tomcat5/webapps/birt-viewer/ajax/lib/

Copy the jar files for the jdbc drivers into the viewer:

::

  cp /usr/local/eclipse/plugins/org.eclipse.birt.report.data.oda.jdbc_2.0.1/drivers/postgresql-8.1-404.jdbc3.jar /opt/tomcat5/webapps/birt-viewer/plugins/org.eclipse.birt.report.data.oda.jdbc/drivers/

Start Tomcat and log into the viewer, http://localhost:8080/birt-viewer/

Oh dear!  It does not work.  I will probably try version 2.1RC3 and see what
happens.

