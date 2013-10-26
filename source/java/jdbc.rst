JDBC
****

Links
=====

- `jTDS is an open source 100% pure Java JDBC 3.0 driver for Microsoft SQL Server`_.
- `Connecting to a Database with JDBC`_
- http://log4jdbc.sourceforge.net/
  log4jdbc is a Java JDBC driver that can log SQL and/or JDBC calls (and
  optionally SQL timing information).
- `JDBC Connection URLs for 22 Databases`_

Sample
------

- sample-jdbc_
- jython - Database, :doc:`../jython/database`.
- See the JDBC/ODBC sample application in:
  https://weezy/svn/learn/java/jdbc-odbc/

Access
------

`DSN'less JDBC connection to MSAccess`_.

We can setup a System/User DSN and connect to the Access database using a JDBC
URL like ``jdbc:odbc:DSN_NAME`` as documented here_
but creating a DSN is an extra setup that I wanted to avoid (especially since my
app required the user to be able to switch to different MS Access databases). In
order to create a DSN'less connection to MS Access, you can use the following
JDBC connection URL:

::

  jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=file path

SQL Server
==========

- SQL Server, :doc:`../microsoft/sql-server/sql-server`.
- SQL Server Express, Connection refused,
  :doc:`../microsoft/sql-server/express`.

Tools
=====

- http://squirrel-sql.sourceforge.net/
- http://www.thinkui.com/sqlclient/ (includes code generation).

Diagnostics
===========

- http://www.p6spy.com/
  P6Spy is an open source framework for applications that intercept and
  optionally modify database statements:
- `p6spy, dbUnit and maven`_


.. _`jTDS is an open source 100% pure Java JDBC 3.0 driver for Microsoft SQL Server`: http://jtds.sourceforge.net/
.. _`Connecting to a Database with JDBC`: http://www.developer.com/db/article.php/10920_3571661_1
.. _`JDBC Connection URLs for 22 Databases`: http://www.redmountainsw.com/wordpress/archives/jdbc-connection-urls
.. _sample-jdbc: http://toybox/hg/sample/file/tip/java/sample-jdbc/
.. _`DSN'less JDBC connection to MSAccess`: http://www.jroller.com/sjivan/entry/dsn_less_jdbc_connection_to
.. _here: http://java.sun.com/j2se/1.3/docs/guide/jdbc/getstart/bridge.doc.html
.. _`p6spy, dbUnit and maven`: http://ericlefevre.net/wordpress/2007/02/23/p6spy-dbunit-and-maven/
