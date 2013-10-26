Open MQ
*******

Links
=====

`Sun Microsystems Documentation - Sun Java System Message Queue 4.1`_

Download
========

Downloaded ``mq4_1-installer-WINNT-20070816.zip`` from
https://mq.dev.java.net/downloads.html.

Install
=======

- Extract the archive.  I extracted to ``/temp/mq4_1-installer/``.
- Run the installer:

  ::

    \temp\mq4_1-installer\installer.vbs

  I installed to:

  ::

    \tools\Sun\MessageQueue\

Maven
=====

To add the jar file, ``imq.jar`` to your local repository:

::

  mvn install:install-file -DgroupId=com.mycompany.thirdparty.com.sun.messaging -DartifactId=imq -Dversion=4.1-build-36-e -Dpackaging=jar -Dfile=C:\tools\Sun\MessageQueue\mq\lib\imq.jar -DgeneratePom=true

The entry for ``pom.xml``:

::

  <dependency>
    <groupId>com.mycompany.thirdparty.com.sun.messaging</groupId>
    <artifactId>imq</artifactId>
    <version>4.1-build-36-e</version>
  </dependency>

**Note**: Click here for notes on the ``jms.jar`` file, :doc:`../jms/maven`.

Usage
=====

Administration Console
----------------------

::

  \tools\Sun\MessageQueue\mq\bin\imqadmin

JNDI
----

These commands use a *File-system Store* to create a connection factory and a
queue:

::

  \tools\Sun\MessageQueue\mq\bin\imqobjmgr add -j java.naming.factory.initial=com.sun.jndi.fscontext.RefFSContextFactory -j java.naming.provider.url=file:/temp/jndi -l HelloConnectionFactory -t cf
  \tools\Sun\MessageQueue\mq\bin\imqobjmgr add -j java.naming.factory.initial=com.sun.jndi.fscontext.RefFSContextFactory -j java.naming.provider.url=file:/temp/jndi -l HelloQueue -t q

**Note**:

- The directory, ``/temp/jndi/`` must have been created before running the
  commands.
- To list the objects which have been added:

  ::

    \tools\Sun\MessageQueue\mq\bin\imqobjmgr list -j java.naming.factory.initial=com.sun.jndi.fscontext.RefFSContextFactory -j java.naming.provider.url=file:/temp/jndi

Persistence
-----------

Open MQ uses some kind of persistent messaging by default.  On start-up it
says:

::

  Using built-in file-based persistent store

Start Broker
------------

::

  \tools\Sun\MessageQueue\mq\bin\imqbrokerd




.. _`Sun Microsystems Documentation - Sun Java System Message Queue 4.1`: http://docs.sun.com/app/docs/coll/1307.3

