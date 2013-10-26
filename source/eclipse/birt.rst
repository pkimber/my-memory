BIRT
****

Linux
=====

Manual Install

::

  cd /usr/local/
  unzip /home/patrick/download/eclipse/GEF-runtime-3.1.1.zip
  unzip /home/patrick/download/eclipse/emf-sdo-runtime-2.1.2.zip
  unzip /home/patrick/download/eclipse/birt-report-framework-2_0_1.zip

  cd eclipse/plugins/org.eclipse.birt.report.engine.emitter.pdf_2.0.1/lib/
  cp /home/patrick/download/eclipse/itext-1.3.jar .

  cd eclipse/plugins/org.eclipse.birt.report.viewer_2.0.1/birt/ajax/lib/
  /home/patrick/download/eclipse/prototype.js .

Windows
=======

Eclipse Modeling Framework (EMF): :doc:`development/emf`.

Installing the Eclipse Web Tools Platform (WTP) appears to install GEF which is
required for BIRT:

Eclipse Web Tools Platform (WTP): :doc:`development/wtp`.

Download birt-report-framework-2_0_1.zip from
http://download.eclipse.org/birt/downloads/ and extract into the Eclipse
folder.

Download http://prdownloads.sourceforge.net/itext/itext-1.3.jar and copy to:

::

  plugins/org.eclipse.birt.report.engine.emitter.pdf_version/lib

Download http://dev.conio.net/repos/prototype/dist/prototype.js and copy to:

::

  plugins/org.eclipse.birt.report.viewer_version/birt/ajax/lib

Configuring JDBC Drivers
========================

http://www.eclipse.org/birt/phoenix/deploy/reportEngineAPI.php

You must configure the engine to include any JDBC drivers that you need.

To do this, copy the driver jar file to the

::

  ReportEngineInstall/birt-runtime-2_0_1/Report Engine/plugins/org.eclipse.birt.report.data.oda.jdbc/drivers directory.

On my workstation for PostgreSQL, I copied ``postgresql-8.1-404.jdbc3.jar``
to this folder:

::

  /usr/local/eclipse/plugins/org.eclipse.birt.report.data.oda.jdbc_2.0.1/drivers/

