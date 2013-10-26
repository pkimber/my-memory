Install
*******

Download
========

Download ``glassfish-installer-v2-b58g.jar`` from
https://glassfish.dev.java.net/downloads/.

Install
=======

Make sure you have stopped any other web containers which use port 8080 e.g.
Tomcat, Continuum.

::

  java -Xmx256m -jar glassfish-installer-v2-b58g.jar -console

**Note**:

- The ``jar`` file will extract the files into a ``glassfish`` folder inside
  your current folder.
- Add the ``-console`` parameter if you are installing in a headless
  environment.
- Be careful if you rename the ``glassfish`` folder.  Some of the batch files,
  ``bin/asadmin.bat** and ``config/asenv.bat`` (among others) build an absolute
  path to the server installation.

Windows
-------

::

  cd glassfish
  lib\ant\bin\ant -f setup.xml

Linux
-----

::

  cd glassfish
  chmod +x ./lib/ant/bin/ant
  ./lib/ant/bin/ant -f setup.xml

Verify Install
==============

`GlassFish Quick Start Guide`_

Windows
-------

::

  bin\asadmin start-domain domain1

Linux
-----

::

  ./bin/asadmin start-domain domain1

Open a browser at http://localhost:8080/

Administration
==============

The admin console is available at http://localhost:4848/

Test Deploy
===========

Download ``hello.war`` from
http://glassfish.dev.java.net/downloads/quickstart/hello.war.

Copy ``hello.war`` to the ``autodeploy`` folder for ``domain1``:

::

  cp hello.war ./domains/domain1/autodeploy/

...and run at http://localhost:8080/hello/

Windows
-------

::

  Login information relevant to admin user name [admin] for this domain [domain1]
  stored at [C:\Documents and Settings\patrick\.asadminpass] successfully.


.. _`GlassFish Quick Start Guide`: https://glassfish.dev.java.net/downloads/quickstart/index.html#ProcedureTo_Start_the_GlassFish_server

