Tutorial
********

http://db.apache.org/derby/

.. highlight:: java

Download
========

Download ``db-derby-10.2.2.0-bin.zip``.  I extracted to::

  C:\tools\db-derby-10.2.2.0-bin\

Tutorial
========

http://db.apache.org/derby/papers/DerbyTut/index.html

To test the installation, and extract::

  cd db-derby-10.2.2.0-bin
  # windows
  java -cp lib\derby.jar;lib\derbytools.jar org.apache.derby.tools.sysinfo
  # linux
  java -cp lib/derby.jar:lib/derbytools.jar org.apache.derby.tools.sysinfo

Or set the ``CLASSPATH`` environment variable::

  # windows
  SET CLASSPATH=C:\tools\db-derby-10.2.2.0-bin\lib\derby.jar;C:\tools\db-derby-10.2.2.0-bin\lib\derbytools.jar
  # linux (fish shell)
  set -x CLASSPATH "/home/patrick/dev/learn/4588-derby-george/db-derby-10.15.1.3-lib/lib/derby.jar:/home/patrick/dev/learn/4588-derby-george/db-derby-10.15.1.3-lib/lib/derbytools.jar"
  #
  java org.apache.derby.tools.sysinfo

ij
==

ij is an interactive SQL scripting tool that comes with Derby.

In this example we want to create a test database in the ``TEMP`` folder.  We
will start ``ij`` after moving to our folder and setting the ``CLASSPATH``::

  java org.apache.derby.tools.ij

This will give you the ij version followed by the prompt::

  ij version 10.1
  ij>

Create a database
-----------------

Start ``ij`` (see above).

To create a database, specify the ``create=true`` attribute in the connection
URL. For example, the command below creates a new database called ``MyDbTest``::

  ij> connect 'jdbc:derby:MyDbTest;create=true';
  ij> connect 'jdbc:derby:POS';

.. note:: `A Derby Database`_ directory contains ``log``, ``seg0``, ``tmp``
          directories and a ``service.properties`` file.

Quit
----

Now quit out of ij::

  ij> exit;

The exit command quits out of ``ij`` and, in embedded mode, shuts down the
Derby database.

Connect to a database
---------------------

Start ``ij`` (see above).

Connect to the database you just created::

  ij> connect 'jdbc:derby:MyDbTest';

This ``connect`` command takes two parameters:

===============  =========  ===================================================
Parameter        Name       Description
===============  =========  ===================================================
``jdbc:derby``   Protocol   Driver to load. In this case, it knows to load the
                            embedded JDBC driver
``MyDbTest``     Database   In the connection URL above works because the
                            ``MyDbTest`` database
                            directory is in the current working directory.
===============  =========  ===================================================

Let's say that your current directory location is ``/home/bill/databases`` and
that you decide to change your directory to a different place entirely. You can
connect to the ``MyDbTest`` database by specifying the complete directory path,
like this::

  ij> connect 'jdbc:derby:/home/bill/databases/MyDbTest';

The protocol can also be specified with a property as shown below::

  java -Dij.protocol=jdbc:derby: org.apache.derby.tools.ij
  ij> connect 'MyDbTest';

You could also specify the Derby system home for the database like this::

  java org.apache.derby.tools.ij -Dderby.system.home=/home/bill/databases
  ij> connect 'jdbc:derby:MyDbTest';

Execute SQL statements
----------------------

Once you connect to a database, you can execute SQL statements.  ``ij`` expects
each statement to be terminated with a semicolon; for example::

  ij> create table derbyDB(num int, addr varchar(40));
  ij> insert into derbyDB values (1956,'Webster St.');
  ij> insert into derbyDB values (1910,'Union St.');
  ij> update derbyDB set num=180, addr='Grand Ave.' where num=1956;
  ij> select * from derbyDb;

Disconnect from a database
--------------------------

The disconnect command disconnects from the current database::

  ij> disconnect;

Run SQL Scripts
---------------

You can execute SQL scripts in ij as shown below::

  ij> run 'my_file.sql';

You can also run SQL scripts from the command line::

  java org.apache.derby.tools.ij my_file.sql


.. _`A Derby Database`: https://db.apache.org/derby/docs/10.0/manuals/develop/develop13.html
