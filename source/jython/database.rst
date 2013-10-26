Database
********

Links
=====

- `The zxJDBC package provides a nearly 100% Python DB API 2.0 compliant interface for database connectivity in jython`_.

Sample
======

HSQL
----

- `sample-jython-hsql.py`_
  A simple sample using an embedded HSQL database.

  - Also see the sample from
    Apache Commons - Database Connection Pools, :doc:`../apache/commons-dbcp`.
  - and the Maven HSQL dependency, :doc:`../hsql/maven`.

MySQL (jython 2.1)
------------------

Using jython **2.1** and ``mysql-connector-java-5.0.6-bin.jar``:

::

  from com.ziclix.python.sql import zxJDBC
  d, u, p, v = 'jdbc:mysql://server/db_name', 'user', 'password', 'com.mysql.jdbc.Driver'
  db = zxJDBC.connect(d, u, p, v)
  # optionally
  #>>> db = zxJDBC.connect(d, u, p, v, CHARSET='iso_1')

  c = db.cursor()
  sql = "select * from users"
  c.execute(sql)
  results = c.fetchall()
  for line in results:
      print line
  c.close()

SQL Server
----------

- `db-sql-server.py`_

Access
------

- `db-access.py`_

::

  from com.ziclix.python.sql import zxJDBC

  connect = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=/temp/csobjects-test-database/testadmin.mdb"
  driver = "sun.jdbc.odbc.JdbcOdbcDriver"

  try:
      db = zxJDBC.connect(connect, None, None, driver)
      c = db.cursor()
      sql = "select * from article"
      c.execute(sql)
      results = c.fetchall()
      for line in results:
          print line
  finally:
      print 'Close connection...'
      c.close()

Exception
=========

::

  from com.ziclix.python.sql import zxJDBC

      try:
          Runner().do()
      except zxJDBC.DatabaseError, e:
          print 'Exception:'
          print e
          print
          print r"Don't forget to add the jTDS, Microsoft SQL Server driver to the CLASSPATH:"
          print r'SET CLASSPATH=C:\Users\Patrick\.m2\repository\net\sourceforge\jtds\jtds\1.2\jtds-1.2.jar'


.. _`The zxJDBC package provides a nearly 100% Python DB API 2.0 compliant interface for database connectivity in jython`: http://www.jython.org/Project/userguide.html#database-connectivity-in-jython
.. _`sample-jython-hsql.py`: http://localhost:8000/file/tip/development/sample/jython/sample-jython-hsql.py
.. _`db-access.py`: ../../misc/companies/g1/i1/db-access.py
.. _`db-sql-server.py`: ../../misc/companies/g1/i1/db-sql-server.py

