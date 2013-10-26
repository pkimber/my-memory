SQL Server
**********

JDBC
====

http://jtds.sourceforge.net/

(SB)... Its more feature-complete and has been stable for longer than the
Microsoft one.  Its reported to be faster, too.  According to their blurb, many
commercial MS JDBC drivers are essentially just repackaged versions of it!  Its
almost a straight drop-in replacement; just be aware that the JDBC URL is
different, and autocommit defaults the opposite way round to the MS one!  (At
least it used to - I always explicitly specify ``autocommit=false`` regardless,
so that may have changed unnoticed.)

Download
--------

Download ``jtds-1.2.2-dist.zip`` from the project web site.  Extract to:

::

  c:\bin\jtds-1.2.2-dist\

Class
-----

`jTDS FAQ`_:

::

  net.sourceforge.jtds.jdbc.Driver

For the GlassFish, ``java.sql.ConnectionPoolDataSource``:

::

  net.sourceforge.jtds.jdbcx.JtdsDataSource

Connection String
-----------------

::

  jdbc:jtds:sqlserver://localhost:1433;databaseName=temp
  jdbc:jtds:sqlserver://localhost:1433;databaseName=temp;user=sa;password=password

For a sample connection string, see this jython script:

::

  ../../resources/misc/companies/g1/i1/db-sql-server.py

Maven
-----

::

  <groupId>net.sourceforge.jtds</groupId>
  <artifactId>jtds</artifactId>
  <version>1.2</version>

Microsoft JDBC Driver
---------------------

`Microsoft SQL Server 2005 JDBC Driver`_

Microsoft SQL Server Management Studio
======================================

Install
-------

From the *library*, install ``Library/Microsoft/SQL2005/Tools/setup.exe``, you
will be asked which features you want to install.  Select *Management Tools*
before continuing with the installation:

::

  ../../../images/howto/microsoft/sql-server-management-studio-install.gif

Restore
-------

Backup and Restore, :doc:`backup-restore`

Enterprise Manager
==================

To install client components including "Enterprise Manager"...

Get the SQL 2000 Enterprise Select CD.

In the set-up wizard select to install the server...  on Windows XP you will
only be able to install the client components.

Add Server
----------

In the *Enterprise Manager*, right click on *SQL Server Group*, select *New SQL
Server Registration*, use the wizard, add the server... (*probably more to
do*).

Restore
-------

To restore the data, right click on the database, All Tasks, Restore:

::

  ../../../images/howto/microsoft/sql-server-restore.gif

Backup
------

*Database*

To backup the data, right click on the database, All Tasks, Backup:

::

  ../../../images/howto/microsoft/sql-server-backup.gif

**Note**:

- Make sure there is only one entry in the Destination, "Backup to:" list box.
- It might be a good idea to *Shrink* the database before backing up.
  Definitely worth doing if you have lots of deleted records in your database.

*Single Table*

For a simple way to backup a single table see Transact-SQL, ``SELECT INTO``,
:doc:`transact-sql`.



.. _`jTDS FAQ`: http://jtds.sourceforge.net/faq.html#driverImplementation
.. _`Microsoft SQL Server 2005 JDBC Driver`: http://msdn.microsoft.com/data/jdbc

